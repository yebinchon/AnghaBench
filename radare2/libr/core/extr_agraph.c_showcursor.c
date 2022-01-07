
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
typedef TYPE_1__ RCore ;


 int r_config_get_i (int ,char*) ;
 int r_cons_enable_mouse (int) ;
 int r_cons_show_cursor (int) ;

__attribute__((used)) static void showcursor(RCore *core, int x) {
 if (!x) {
  int wheel = r_config_get_i (core->config, "scr.wheel");
  if (wheel) {
   r_cons_enable_mouse (1);
  }
 } else {
  r_cons_enable_mouse (0);
 }
 r_cons_show_cursor (x);
}
