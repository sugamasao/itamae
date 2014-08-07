require 'spec_helper'

describe package('dstat') do
  it { should be_installed }
end

describe package('sl') do
  it { should be_installed }
end

describe file('/tmp/remote_file') do
  it { should be_file }
  its(:content) { should match(/Hello Itamae/) }
end

describe file('/tmp/directory') do
  it { should be_directory }
  it { should be_mode 700 }
  it { should be_owned_by "vagrant" }
  it { should be_grouped_into "vagrant" }
end

describe file('/tmp/template') do
  it { should be_file }
  its(:content) { should match(/Hello/) }
end

describe file('/tmp/file') do
  it { should be_file }
  its(:content) { should match(/Hello World/) }
end

describe file('/tmp/execute') do
  it { should be_file }
  its(:content) { should match(/Hello Execute/) }
end

describe file('/tmp/never_exist1') do
  it { should_not be_file }
end

describe file('/tmp/never_exist2') do
  it { should_not be_file }
end

