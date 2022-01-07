
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int * panels; } ;
struct TYPE_11__ {TYPE_1__* view; } ;
struct TYPE_10__ {int pos; } ;
typedef int RPanels ;
typedef TYPE_2__ RPanel ;
typedef TYPE_3__ RCore ;


 int PANEL_CONFIG_SIDEPANEL_W ;
 int __adjust_side_panels (TYPE_3__*) ;
 TYPE_2__* __get_panel (int *,int ) ;
 int __insert_panel (TYPE_3__*,int ,char const*,char const*) ;
 int __set_curnode (TYPE_3__*,int ) ;
 int __set_geometry (int *,int ,int,int ,int) ;
 int __set_refresh_all (TYPE_3__*,int,int) ;
 int r_cons_get_size (int*) ;

void __add_help_panel(RCore *core) {

 RPanels *ps = core->panels;
 int h;
 const char *help = "Help";
 (void)r_cons_get_size (&h);
 __adjust_side_panels (core);
 __insert_panel (core, 0, help, help);
 RPanel *p0 = __get_panel (ps, 0);
 __set_geometry (&p0->view->pos, 0, 1, PANEL_CONFIG_SIDEPANEL_W, h - 1);
 __set_curnode (core, 0);
 __set_refresh_all (core, 0, 0);
}
