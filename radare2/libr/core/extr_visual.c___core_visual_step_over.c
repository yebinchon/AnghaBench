
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int config; TYPE_1__* print; } ;
struct TYPE_5__ {scalar_t__ cur_enabled; } ;
typedef TYPE_2__ RCore ;


 int r_config_get_i (int ,char*) ;
 int r_config_set_i (int ,char*,int) ;
 int r_core_cmd (TYPE_2__*,char*,int ) ;

__attribute__((used)) static void __core_visual_step_over(RCore *core) {
 bool io_cache = r_config_get_i (core->config, "io.cache");
 r_config_set_i (core->config, "io.cache", 0);
 if (r_config_get_i (core->config, "cfg.debug")) {
  if (core->print->cur_enabled) {
   r_core_cmd (core, "dcr", 0);
   core->print->cur_enabled = 0;
  } else {
   r_core_cmd (core, "dso", 0);
   r_core_cmd (core, ".dr*", 0);
  }
 } else {
  r_core_cmd (core, "aeso", 0);
  r_core_cmd (core, ".ar*", 0);
 }
 r_config_set_i (core->config, "io.cache", io_cache);
}
