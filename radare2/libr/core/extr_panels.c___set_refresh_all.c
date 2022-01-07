
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* panels; } ;
struct TYPE_13__ {TYPE_1__* view; } ;
struct TYPE_12__ {int n_panels; } ;
struct TYPE_11__ {int refresh; } ;
typedef TYPE_2__ RPanels ;
typedef TYPE_3__ RPanel ;
typedef TYPE_4__ RCore ;


 int PANEL_CMD_CONSOLE ;
 scalar_t__ __check_panel_type (TYPE_3__*,int ) ;
 TYPE_3__* __get_panel (TYPE_2__*,int) ;
 int __set_cmd_str_cache (TYPE_4__*,TYPE_3__*,int *) ;

void __set_refresh_all(RCore *core, bool clearCache, bool force_refresh) {
 RPanels *panels = core->panels;
 int i;
 for (i = 0; i < panels->n_panels; i++) {
  RPanel *panel = __get_panel (panels, i);
  if (!force_refresh && __check_panel_type (panel, PANEL_CMD_CONSOLE)) {
   continue;
  }
  panel->view->refresh = 1;
  if (clearCache) {
   __set_cmd_str_cache (core, panel, ((void*)0));
  }
 }
}
