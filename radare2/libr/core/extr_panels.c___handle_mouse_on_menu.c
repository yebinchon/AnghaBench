
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;


struct TYPE_25__ {TYPE_5__* panels; } ;
struct TYPE_24__ {TYPE_4__* panels_menu; } ;
struct TYPE_23__ {int depth; TYPE_3__** history; } ;
struct TYPE_22__ {int n_sub; int selectedIndex; TYPE_1__** sub; } ;
struct TYPE_21__ {int refresh; } ;
struct TYPE_20__ {int (* cb ) (TYPE_6__*) ;int name; } ;
struct TYPE_19__ {TYPE_2__* view; } ;
typedef TYPE_3__ RPanelsMenuItem ;
typedef TYPE_4__ RPanelsMenu ;
typedef TYPE_5__ RPanels ;
typedef TYPE_6__ RCore ;


 int PANEL_MODE_DEFAULT ;
 int __clear_panels_menu (TYPE_6__*) ;
 int __del_menu (TYPE_6__*) ;
 TYPE_15__* __get_cur_panel (TYPE_5__*) ;
 int __set_mode (TYPE_6__*,int ) ;
 int __update_menu_contents (TYPE_6__*,TYPE_4__*,TYPE_3__*) ;
 int free (char*) ;
 char* get_word_from_canvas_for_menu (TYPE_6__*,TYPE_5__*,int,int) ;
 int strcmp (char*,int ) ;
 int stub1 (TYPE_6__*) ;

void __handle_mouse_on_menu(RCore *core, int x, int y) {
 RPanels *panels = core->panels;
 char *word = get_word_from_canvas_for_menu (core, panels, x, y);
 RPanelsMenu *menu = panels->panels_menu;
 int i, d = menu->depth - 1;
 while (d) {
  RPanelsMenuItem *parent = menu->history[d--];
  for (i = 0; i < parent->n_sub; i++) {
   if (!strcmp (word, parent->sub[i]->name)) {
    parent->selectedIndex = i;
    (void)(parent->sub[parent->selectedIndex]->cb (core));
    __update_menu_contents (core, menu, parent);
    free (word);
    return;
   }
  }
  __del_menu (core);
 }
 __clear_panels_menu (core);
 __set_mode (core, PANEL_MODE_DEFAULT);
 __get_cur_panel (panels)->view->refresh = 1;
 free (word);
}
