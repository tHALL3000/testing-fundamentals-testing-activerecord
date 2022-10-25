require "spec_helper"

describe Person do
  it "requires a name to be valid" do
    person = Person.new(first_name: "John")
    expect(person).to be_valid
  end
  it "is invalid if it is blank" do
    person = Person.new(first_name: "")
    expect(person).to be_invalid
  end
  it "is invalid if it is nil" do
    person = Person.new(first_name: nil)
    expect(person).to be_invalid
  end
end
