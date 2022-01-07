
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* panels; } ;
struct TYPE_12__ {TYPE_2__* view; } ;
struct TYPE_11__ {int n_panels; int mouse_orig_y; } ;
struct TYPE_9__ {int y; int h; } ;
struct TYPE_10__ {TYPE_1__ pos; } ;
typedef TYPE_3__ RPanels ;
typedef TYPE_4__ RPanel ;
typedef TYPE_5__ RCore ;


 TYPE_4__* __get_panel (TYPE_3__*,int) ;

void __update_edge_y(RCore *core, int y) {
 RPanels *panels = core->panels;
 int i, j;
 int tmp_y = 0;
 for (i = 0; i < panels->n_panels; i++) {
  RPanel *p0 = __get_panel (panels, i);
  if (p0->view->pos.y - 2 <= panels->mouse_orig_y &&
    panels->mouse_orig_y <= p0->view->pos.y + 2) {
   tmp_y = p0->view->pos.y;
   p0->view->pos.y += y;
   p0->view->pos.h -= y;
   for (j = 0; j < panels->n_panels; j++) {
    RPanel *p1 = __get_panel (panels, j);
    if (p1->view->pos.y + p1->view->pos.h - 1 == tmp_y) {
     p1->view->pos.h += y;
    }
   }
  }
 }
}
