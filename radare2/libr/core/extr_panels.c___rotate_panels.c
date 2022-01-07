
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* panels; } ;
struct TYPE_9__ {int * model; } ;
struct TYPE_8__ {int n_panels; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanelModel ;
typedef TYPE_2__ RPanel ;
typedef TYPE_3__ RCore ;


 TYPE_2__* __get_panel (TYPE_1__*,int) ;
 int __set_refresh_all (TYPE_3__*,int,int) ;

void __rotate_panels(RCore *core, bool rev) {
 RPanels *panels = core->panels;
 RPanel *first = __get_panel (panels, 0);
 RPanel *last = __get_panel (panels, panels->n_panels - 1);
 int i;
 RPanelModel *tmp_model;
 if (!rev) {
  tmp_model = first->model;
  for (i = 0; i < panels->n_panels - 1; i++) {
   RPanel *p0 = __get_panel (panels, i);
   RPanel *p1 = __get_panel (panels, i + 1);
   p0->model = p1->model;
  }
  last->model = tmp_model;
 } else {
  tmp_model = last->model;
  for (i = panels->n_panels - 1; i > 0; i--) {
   RPanel *p0 = __get_panel (panels, i);
   RPanel *p1 = __get_panel (panels, i - 1);
   p0->model = p1->model;
  }
  first->model = tmp_model;
 }
 __set_refresh_all (core, 0, 1);
}
