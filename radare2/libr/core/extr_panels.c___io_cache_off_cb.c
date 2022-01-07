
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int config; } ;
typedef TYPE_1__ RCore ;


 int PANEL_MODE_DEFAULT ;
 int __set_mode (TYPE_1__*,int ) ;
 int __show_status (TYPE_1__*,char*) ;
 int r_config_set_i (int ,char*,int ) ;

int __io_cache_off_cb(void *user) {
 RCore *core = (RCore *)user;
 r_config_set_i (core->config, "io.cache", 0);
 (void)__show_status (core, "io.cache is off");
 __set_mode (core, PANEL_MODE_DEFAULT);
 return 0;
}
