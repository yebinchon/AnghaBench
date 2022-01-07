
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_21__ {TYPE_4__* panels; } ;
struct TYPE_20__ {TYPE_1__* view; } ;
struct TYPE_19__ {TYPE_3__* panels_menu; } ;
struct TYPE_18__ {int depth; TYPE_2__** history; } ;
struct TYPE_17__ {size_t selectedIndex; int name; struct TYPE_17__** sub; } ;
struct TYPE_16__ {int pos; } ;
typedef TYPE_2__ RPanelsMenuItem ;
typedef TYPE_3__ RPanelsMenu ;
typedef TYPE_4__ RPanels ;
typedef TYPE_5__ RPanel ;
typedef TYPE_6__ RCore ;


 int PANEL_CONFIG_SIDEPANEL_W ;
 int PANEL_MODE_DEFAULT ;
 int __adjust_side_panels (TYPE_6__*) ;
 int __check_panel_num (TYPE_6__*) ;
 TYPE_5__* __get_panel (TYPE_4__*,int ) ;
 int __insert_panel (TYPE_6__*,int ,int ,char*) ;
 char* __search_db (TYPE_6__*,int ) ;
 int __set_curnode (TYPE_6__*,int ) ;
 int __set_geometry (int *,int ,int,int ,int) ;
 int __set_mode (TYPE_6__*,int ) ;
 int __set_refresh_all (TYPE_6__*,int,int) ;
 int free (char*) ;
 int r_cons_get_size (int*) ;

int __add_cmd_panel(void *user) {
 RCore *core = (RCore *)user;
 RPanels *panels = core->panels;
 if (!__check_panel_num (core)) {
  return 0;
 }
 RPanelsMenu *menu = core->panels->panels_menu;
 RPanelsMenuItem *parent = menu->history[menu->depth - 1];
 RPanelsMenuItem *child = parent->sub[parent->selectedIndex];
 char *cmd = __search_db (core, child->name);
 if (!cmd) {
  return 0;
 }
 int h;
 (void)r_cons_get_size (&h);
 __adjust_side_panels (core);
 __insert_panel (core, 0, child->name, cmd);
 RPanel *p0 = __get_panel (panels, 0);
 __set_geometry (&p0->view->pos, 0, 1, PANEL_CONFIG_SIDEPANEL_W, h - 1);
 __set_curnode (core, 0);
 __set_refresh_all (core, 0, 0);
 __set_mode (core, PANEL_MODE_DEFAULT);
 free (cmd);
 return 0;
}
