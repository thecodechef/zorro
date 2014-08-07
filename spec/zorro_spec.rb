describe Zorro::Gem do
  describe '::info' do
    context "when gem is found" do
      let(:gem) { Zorro::Gem.info('googl') }

      it { expect(gem.name).to eq('googl') }
      it { expect(gem.version).to eq('0.6.3') }
    end

    context "when gem is not found" do
      it { expect(Zorro::Gem.info('gem_xpto_invalid')).to eql(Zorro::Messages::GEM_NOT_FOUND) }
    end
  end
end
