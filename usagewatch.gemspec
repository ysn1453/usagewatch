# License: (MIT), Copyright (C) 2013 usagewatch Author Phil Chen, contributor Ruben Espinosa
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'usagewatch/version'

Gem::Specification.new do |spec|
  spec.name          = "usagewatch"
  spec.version       = Usagewatch::VERSION
  spec.authors       = ["Yasin Pehlivanli, Phil Chen, Ruben Espinosa"]
  spec.email         = ["yasin.pehlivanli@ipos.com.tr"]
  spec.description   = %q{A Ruby Gem with methods to find usage statistics on a Linux server such as CPU, Disk, TCP/UDP Connections, Load, Bandwidth, Disk I/O, and Memory}
  spec.summary       = %q{Statistics on a Linux server}
  spec.homepage      = "https://github.com/ysn1453/usagewatch"
  spec.license       = "MIT"
  spec.rdoc_options << '--main' << 'README'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.post_install_message = "* rails 3.x ve 4.x uygulayabilirsiniz .\nYasin Pehlivanli!"
end