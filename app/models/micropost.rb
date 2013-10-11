class Micropost < ActiveRecord::Base
  belongs_to:user
  default_scope -> {order('created_at DESC')}
  validate :content,presence:true,length:{maximum:140}
  validates :user_id,presence:true
end
