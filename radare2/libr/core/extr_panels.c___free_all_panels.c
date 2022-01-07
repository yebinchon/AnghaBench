
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n_panels; int panel; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanel ;


 int __free_single_panel (int *) ;
 int * __get_panel (TYPE_1__*,int) ;
 int free (int ) ;

void __free_all_panels(RPanels *panels) {
 int i;
 for (i = 0; i < panels->n_panels; i++) {
  RPanel *p = __get_panel (panels, i);
  __free_single_panel (p);
 }
 free (panels->panel);
}
