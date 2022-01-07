
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* view; } ;
struct TYPE_10__ {int n_panels; int can; } ;
struct TYPE_8__ {int h; int w; int y; int x; } ;
struct TYPE_9__ {TYPE_1__ pos; } ;
typedef TYPE_3__ RPanels ;
typedef TYPE_4__ RPanel ;


 TYPE_4__* __get_panel (TYPE_3__*,int) ;
 int r_cons_canvas_fill (int ,int ,int ,int ,int ,char) ;
 int r_cons_canvas_print (int ) ;
 int r_cons_flush () ;

void __panel_all_clear(RPanels *panels) {
 if (!panels) {
  return;
 }
 int i;
 RPanel *panel = ((void*)0);
 for (i = 0; i < panels->n_panels; i++) {
  panel = __get_panel (panels, i);
  r_cons_canvas_fill (panels->can, panel->view->pos.x, panel->view->pos.y, panel->view->pos.w, panel->view->pos.h, ' ');
 }
 r_cons_canvas_print (panels->can);
 r_cons_flush ();
}
