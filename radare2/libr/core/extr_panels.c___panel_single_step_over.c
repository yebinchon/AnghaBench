
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int config; } ;
typedef TYPE_1__ RCore ;


 int r_config_get_i (int ,char*) ;
 int r_config_set_i (int ,char*,int) ;
 int r_core_cmd (TYPE_1__*,char*,int ) ;

void __panel_single_step_over(RCore *core) {
 bool io_cache = r_config_get_i (core->config, "io.cache");
 r_config_set_i (core->config, "io.cache", 0);
 if (r_config_get_i (core->config, "cfg.debug")) {
  r_core_cmd (core, "dso", 0);
  r_core_cmd (core, ".dr*", 0);
 } else {
  r_core_cmd (core, "aeso", 0);
  r_core_cmd (core, ".ar*", 0);
 }
 r_config_set_i (core->config, "io.cache", io_cache);
}
