
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * submenu_id; } ;
typedef TYPE_1__ vimmenu_T ;
typedef int char_u ;
struct TYPE_5__ {int event_time; } ;
typedef int GtkWidget ;
typedef int GtkMenuPositionFunc ;


 int * CONVERT_TO_UTF8 (int *) ;
 int CONVERT_TO_UTF8_FREE (int *) ;
 int GINT_TO_POINTER (int ) ;
 int GTK_IM_MULTICONTEXT (int *) ;
 int GTK_MENU (int *) ;
 int GTK_MENU_ITEM (int *) ;
 int GTK_MENU_SHELL (int *) ;
 int G_OBJECT (int *) ;
 int TRUE ;
 scalar_t__ _ (char*) ;
 int * g_object_get_data (int ,char*) ;
 int g_object_set_data (int ,char*,int ) ;
 int gtk_im_multicontext_append_menuitems (int ,int ) ;
 int * gtk_menu_item_new_with_mnemonic (char const*) ;
 int gtk_menu_item_set_submenu (int ,int *) ;
 int * gtk_menu_new () ;
 int gtk_menu_popup (int ,int *,int *,int ,int *,unsigned int,int ) ;
 int gtk_menu_shell_append (int ,int *) ;
 int * gtk_separator_menu_item_new () ;
 int gtk_widget_show (int *) ;
 TYPE_3__ gui ;
 int * xic ;

void
gui_mch_show_popupmenu(vimmenu_T *menu)
{
    gtk_menu_popup(GTK_MENU(menu->submenu_id),
     ((void*)0), ((void*)0),
     (GtkMenuPositionFunc)((void*)0), ((void*)0),
     3U, gui.event_time);
}
