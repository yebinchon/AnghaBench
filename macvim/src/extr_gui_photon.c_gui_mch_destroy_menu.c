
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * id; int * submenu_id; } ;
typedef TYPE_1__ vimmenu_T ;


 int PtDestroyWidget (int *) ;

void
gui_mch_destroy_menu(vimmenu_T *menu)
{
    if (menu->submenu_id != ((void*)0))
 PtDestroyWidget(menu->submenu_id);
    if (menu->id != ((void*)0))
 PtDestroyWidget(menu->id);

    menu->submenu_id = ((void*)0);
    menu->id = ((void*)0);
}
