{
  lib,
  config,
  ...
}: {
  options = {
    zellijModule.enable =
      lib.mkEnableOption "Zellij module";
  };

  config = lib.mkIf config.zellijModule.enable {
    programs.zellij = {
      enable = true;
    };
    home.file.".config/zellij/config.kdl".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Git/vicgeentor/nixos/modules/home-manager/toggleable/zellij/config.kdl";
  };
}
