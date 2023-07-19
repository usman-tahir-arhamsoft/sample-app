class Employee < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :city, :country, :phone_no, presence: true

    def full_name
        "#{first_name} #{last_name}".strip
    end

    def full_address
        "#{city} #{state}, #{country}".strip
    end
end
