
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * model; } ;
typedef int RPanels ;
typedef int RPanelModel ;
typedef TYPE_1__ RPanel ;


 TYPE_1__* __get_panel (int *,int) ;

void __swap_panels(RPanels *panels, int p0, int p1) {
 RPanel *panel0 = __get_panel (panels, p0);
 RPanel *panel1 = __get_panel (panels, p1);
 RPanelModel *tmp = panel0->model;

 panel0->model = panel1->model;
 panel1->model = tmp;
}
