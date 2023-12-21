local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "intelephense",
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "tailwindcss-language-server"
      },
    },
  },
}

return plugins
