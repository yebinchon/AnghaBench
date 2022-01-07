
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
struct TYPE_11__ {int n_panels; int mouse_orig_x; } ;
struct TYPE_9__ {int x; int w; } ;
struct TYPE_10__ {TYPE_1__ pos; } ;
typedef TYPE_3__ RPanels ;
typedef TYPE_4__ RPanel ;
typedef TYPE_5__ RCore ;


 TYPE_4__* __get_panel (TYPE_3__*,int) ;

void __update_edge_x(RCore *core, int x) {
 RPanels *panels = core->panels;
 int i, j;
 int tmp_x = 0;
 for (i = 0; i < panels->n_panels; i++) {
  RPanel *p0 = __get_panel (panels, i);
  if (p0->view->pos.x - 2 <= panels->mouse_orig_x &&
    panels->mouse_orig_x <= p0->view->pos.x + 2) {
   tmp_x = p0->view->pos.x;
   p0->view->pos.x += x;
   p0->view->pos.w -= x;
   for (j = 0; j < panels->n_panels; j++) {
    RPanel *p1 = __get_panel (panels, j);
    if (p1->view->pos.x + p1->view->pos.w - 1 == tmp_x) {
     p1->view->pos.w += x;
    }
   }
  }
 }
}
