
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * id; int name; } ;
typedef TYPE_1__ vimmenu_T ;


 int FALSE ;
 int GTK_WIDGET_SENSITIVE (int *) ;
 int TRUE ;
 int gtk_widget_set_sensitive (int *,int) ;
 int gui_mch_menu_hidden (TYPE_1__*,int ) ;
 int gui_mch_update () ;
 scalar_t__ menu_is_separator (int ) ;

void
gui_mch_menu_grey(vimmenu_T *menu, int grey)
{
    if (menu->id == ((void*)0))
 return;

    if (menu_is_separator(menu->name))
 grey = TRUE;

    gui_mch_menu_hidden(menu, FALSE);

    if (!GTK_WIDGET_SENSITIVE(menu->id) == !grey)
    {
 gtk_widget_set_sensitive(menu->id, !grey);
 gui_mch_update();
    }
}
