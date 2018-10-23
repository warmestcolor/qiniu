defmodule Qiniu.Mixfile do
  use Mix.Project

  @version "1.0.0"

  def project do
    [
      app: :qiniu,
      version: @version,
      elixir: "~> 1.4",
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: preferred_cli_env(),

      # Hex
      description: description(),
      package: package()
    ]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [
      {:poison, "~> 3.1"},
      {:httpoison, "~> 0.13"},
      {:ex_doc, "~> 0.19", only: :docs},
      {:excoveralls, "~> 0.6", only: :test},
      {:earmark, "~> 1.2", only: :docs},
      {:inch_ex, "~> 0.5", only: :docs},
      {:mock, "~> 0.2", only: :test}
    ]
  end

  defp description do
    "Qiniu Resource (Cloud) Storage SDK for Elixir"
  end

  defp package do
    [maintainers: ["Tony Han"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/tony612/qiniu"},
     files: ~w(mix.exs README.md CHANGELOG.md lib config)]
  end

  defp preferred_cli_env do
    ["coveralls": :test, "coveralls.travis": :test, "coveralls.html": :test]
  end

end
