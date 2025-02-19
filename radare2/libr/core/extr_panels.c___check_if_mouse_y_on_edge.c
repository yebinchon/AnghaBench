
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int config; TYPE_3__* panels; } ;
struct TYPE_12__ {TYPE_2__* view; } ;
struct TYPE_11__ {int n_panels; int mouse_on_edge_y; int mouse_orig_y; } ;
struct TYPE_9__ {int x; int const w; int y; } ;
struct TYPE_10__ {TYPE_1__ pos; } ;
typedef TYPE_3__ RPanels ;
typedef TYPE_4__ RPanel ;
typedef TYPE_5__ RCore ;


 TYPE_4__* __get_panel (TYPE_3__*,int) ;
 scalar_t__ r_config_get_i (int ,char*) ;

bool __check_if_mouse_y_on_edge(RCore *core, int x, int y) {
 RPanels *panels = core->panels;
 const int edge_y = r_config_get_i (core->config, "scr.panelborder")? 3: 1;
 int i = 0;
 for (; i < panels->n_panels; i++) {
  RPanel *panel = __get_panel (panels, i);
  if (x > panel->view->pos.x && x <= panel->view->pos.x + panel->view->pos.w + edge_y) {
   if (y > 2 && y >= panel->view->pos.y && y <= panel->view->pos.y + edge_y) {
    panels->mouse_on_edge_y = 1;
    panels->mouse_orig_y = y;
    return 1;
   }
  }
 }
 return 0;
}
