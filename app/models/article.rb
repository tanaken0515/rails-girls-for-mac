class Article < ApplicationRecord
  has_rich_text :body

  validate :body_required

  private
  def body_required
    errors.add(:body, "is required") unless body.body.present?
  end
end
