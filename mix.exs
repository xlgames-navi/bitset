defmodule Bitset.MixProject do
  use Mix.Project

  def project do
    [
      app: :bitset,
      version: "0.2.2",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "bitset",
      source_url: "https://github.com/kminwoog/bitset",
      homepage_url: "http://kminwoog.com",
      docs: [
        # The main page in the docs
        main: "bitset",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:benchfella, "~> 0.3.5"},
      {:ex_doc, "~> 0.35.1", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "c++ stl style elixir bitset module"
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "bitset",
      # These are the default files included in the package
      files: ["lib", "test", "config", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["kim min woog"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/kminwoog/bitset"}
    ]
  end
end
