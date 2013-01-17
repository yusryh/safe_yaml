# -*- encoding: utf-8 -*-
require File.join(File.dirname(__FILE__), "lib", "safe_yaml", "version")

Gem::Specification.new do |gem|
  gem.name          = "safe_yaml"
  gem.version       = SafeYAML::VERSION
  gem.authors       = "Dan Tao"
  gem.email         = "daniel.tao@gmail.com"
  gem.description   = %q{Parse (simple) YAML safely, without that pesky arbitrary code execution vulnerability.}
  gem.summary       = %q{SameYAML adds a ::safe_load method to Ruby's built-in YAML module to parse YAML data for only basic types (strings, symbols, numbers, arrays, and hashes).}
  gem.homepage      = "http://dtao.github.com/safe_yaml/"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ["lib"]

  gem.add_dependency("psych")
end
