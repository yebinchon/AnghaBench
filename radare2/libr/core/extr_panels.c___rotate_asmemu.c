
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int config; } ;
struct TYPE_7__ {TYPE_1__* view; } ;
struct TYPE_6__ {int refresh; } ;
typedef TYPE_2__ RPanel ;
typedef TYPE_3__ RCore ;


 int r_config_get_i (int ,char*) ;
 int r_config_set (int ,char*,char*) ;

void __rotate_asmemu(RCore *core, RPanel *p) {
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
 p->view->refresh = 1;
}
