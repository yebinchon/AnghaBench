
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int config; } ;
typedef TYPE_1__ RCore ;


 scalar_t__ r_config_get_i (int ,char*) ;
 int r_core_cmd (TYPE_1__*,char*,int ) ;

void __panel_single_step_in(RCore *core) {
 if (r_config_get_i (core->config, "cfg.debug")) {
  r_core_cmd (core, "ds", 0);
  r_core_cmd (core, ".dr*", 0);
 } else {
  r_core_cmd (core, "aes", 0);
  r_core_cmd (core, ".ar*", 0);
 }
}
