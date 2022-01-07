
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {TYPE_2__* panels; } ;
struct TYPE_16__ {TYPE_1__* model; } ;
struct TYPE_15__ {scalar_t__ autoUpdate; } ;
struct TYPE_14__ {scalar_t__ cmdStrCache; scalar_t__ cache; } ;
typedef TYPE_3__ RPanel ;
typedef TYPE_4__ RCore ;


 scalar_t__ __check_func_diff (TYPE_4__*,TYPE_3__*) ;
 char* __find_cmd_str_cache (TYPE_4__*,TYPE_3__*) ;
 char* __handle_cmd_str_cache (TYPE_4__*,TYPE_3__*,int) ;
 int __reset_scroll_pos (TYPE_3__*) ;
 int __update_panel_contents (TYPE_4__*,TYPE_3__*,char*) ;

void __print_disasmsummary_cb (void *user, void *p) {
 RCore *core = (RCore *)user;
 RPanel *panel = (RPanel *)p;
 bool update = core->panels->autoUpdate && __check_func_diff (core, panel);
 char *cmdstr = __find_cmd_str_cache (core, panel);
 if (update || !cmdstr) {
  cmdstr = __handle_cmd_str_cache (core, panel, 1);
  if (panel->model->cache && panel->model->cmdStrCache) {
   __reset_scroll_pos (panel);
  }
 }
 __update_panel_contents (core, panel, cmdstr);
}
