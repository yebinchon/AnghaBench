
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* view; } ;
struct TYPE_10__ {int n_panels; } ;
struct TYPE_8__ {int x; int w; int y; int h; } ;
struct TYPE_9__ {int edgeflag; TYPE_1__ pos; } ;
typedef TYPE_3__ RPanels ;
typedef TYPE_4__ RPanel ;


 int PANEL_EDGE_BOTTOM ;
 int PANEL_EDGE_RIGHT ;
 TYPE_4__* __get_panel (TYPE_3__*,int) ;

void __check_edge(RPanels *panels) {
 int i, tmpright, tmpbottom, maxright = 0, maxbottom = 0;
 for (i = 0; i < panels->n_panels; i++) {
  RPanel *panel = __get_panel (panels, i);
  if (!panel) {
   continue;
  }
  tmpright = panel->view->pos.x + panel->view->pos.w;
  tmpbottom = panel->view->pos.y + panel->view->pos.h;
  if (tmpright > maxright) {
   maxright = tmpright;
  }
  if (tmpbottom > maxbottom) {
   maxbottom = tmpbottom;
  }
 }
 int f1, f2;
 for (i = 0; i < panels->n_panels; i++) {
  RPanel *panel = __get_panel (panels, i);
  if (!panel) {
   continue;
  }
  f1 = f2 = 0;
  if (panel->view->pos.x + panel->view->pos.w == maxright) {
   f1 = (1 << PANEL_EDGE_RIGHT);
  }
  if (panel->view->pos.y + panel->view->pos.h == maxbottom) {
   f2 = (1 << PANEL_EDGE_BOTTOM);
  }
  panel->view->edgeflag = f1 | f2;
 }
}
