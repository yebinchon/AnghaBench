
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPanel ;


 int __free_panel_model (int *) ;
 int __free_panel_view (int *) ;
 int free (int *) ;

void __free_single_panel(RPanel *panel) {
 __free_panel_model (panel);
 __free_panel_view (panel);
 free (panel);
}
