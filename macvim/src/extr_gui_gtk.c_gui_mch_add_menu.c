
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; int tearoff_handle; int * submenu_id; int id; struct TYPE_5__* parent; } ;
typedef TYPE_1__ vimmenu_T ;
struct TYPE_6__ {int accel_group; int * menubar; } ;
typedef int GtkWidget ;


 int GO_TEAROFF ;
 int GTK_MENU (int *) ;
 int GTK_MENU_ITEM (int ) ;
 int GTK_MENU_SHELL (int *) ;
 int gtk_menu_item_set_submenu (int ,int *) ;
 void* gtk_menu_new () ;
 int gtk_menu_prepend (int ,int ) ;
 int gtk_menu_set_accel_group (int ,int ) ;
 int gtk_menu_shell_insert (int ,int ,int) ;
 int gtk_tearoff_menu_item_new () ;
 int gtk_widget_show (int ) ;
 TYPE_4__ gui ;
 int menu_is_menubar (char*) ;
 scalar_t__ menu_is_popup (char*) ;
 int menu_item_new (TYPE_1__*,int *) ;
 int p_go ;
 int * vim_strchr (int ,int ) ;

void
gui_mch_add_menu(vimmenu_T *menu, int idx)
{
    vimmenu_T *parent;
    GtkWidget *parent_widget;

    if (menu->name[0] == ']' || menu_is_popup(menu->name))
    {
 menu->submenu_id = gtk_menu_new();
 return;
    }

    parent = menu->parent;

    if ((parent != ((void*)0) && parent->submenu_id == ((void*)0))
     || !menu_is_menubar(menu->name))
 return;

    parent_widget = (parent != ((void*)0)) ? parent->submenu_id : gui.menubar;
    menu_item_new(menu, parent_widget);


    if (parent != ((void*)0) && !menu_is_popup(parent->name))
 ++idx;

    gtk_menu_shell_insert(GTK_MENU_SHELL(parent_widget), menu->id, idx);

    menu->submenu_id = gtk_menu_new();

    gtk_menu_set_accel_group(GTK_MENU(menu->submenu_id), gui.accel_group);
    gtk_menu_item_set_submenu(GTK_MENU_ITEM(menu->id), menu->submenu_id);

    menu->tearoff_handle = gtk_tearoff_menu_item_new();
    if (vim_strchr(p_go, GO_TEAROFF) != ((void*)0))
 gtk_widget_show(menu->tearoff_handle);
    gtk_menu_prepend(GTK_MENU(menu->submenu_id), menu->tearoff_handle);
}
