module ApplicationHelper
  def gravatar_for(user)
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}"
    image_tag(gravatar_url, alt: user.name, class: "rounded shadow mx-auto d-block")
  end
end
