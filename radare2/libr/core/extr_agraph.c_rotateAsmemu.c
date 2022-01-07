
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
typedef TYPE_1__ RCore ;


 int r_config_get_i (int ,char*) ;
 int r_config_set (int ,char*,char*) ;

__attribute__((used)) static void rotateAsmemu(RCore *core) {
 const bool isEmuStr = r_config_get_i (core->config, "emu.str");
 const bool isEmu = r_config_get_i (core->config, "asm.emu");
 if (isEmu) {
  if (isEmuStr) {
   r_config_set (core->config, "emu.str", "false");
  } else {
   r_config_set (core->config, "asm.emu", "false");
  }
 } else {
  r_config_set (core->config, "emu.str", "true");
 }
}
