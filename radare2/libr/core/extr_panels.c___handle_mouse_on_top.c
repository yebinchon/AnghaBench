
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {TYPE_3__* panels; } ;
struct TYPE_16__ {TYPE_2__* panels_menu; } ;
struct TYPE_15__ {int depth; TYPE_1__** history; } ;
struct TYPE_14__ {int selectedIndex; int (* cb ) (TYPE_4__*) ;struct TYPE_14__** sub; } ;
typedef TYPE_1__ RPanelsMenuItem ;
typedef TYPE_2__ RPanelsMenu ;
typedef TYPE_3__ RPanels ;
typedef TYPE_4__ RCore ;


 int COUNT (char**) ;
 int PANEL_MODE_MENU ;
 int __clear_panels_menu (TYPE_4__*) ;
 int __handle_tab_new (TYPE_4__*) ;
 int __handle_tab_nth (TYPE_4__*,char) ;
 int __set_mode (TYPE_4__*,int ) ;
 int __set_refresh_all (TYPE_4__*,int,int) ;
 scalar_t__ atoi (char*) ;
 int free (char*) ;
 char* get_word_from_canvas (TYPE_4__*,TYPE_3__*,int,int) ;
 char** menus ;
 int strcmp (char*,char*) ;
 int stub1 (TYPE_4__*) ;

bool __handle_mouse_on_top (RCore *core, int x, int y) {
 RPanels *panels = core->panels;
 char *word = get_word_from_canvas (core, panels, x, y);
 int i;
 for (i = 0; i < COUNT (menus); i++) {
  if (!strcmp (word, menus[i])) {
   __set_mode (core, PANEL_MODE_MENU);
   __clear_panels_menu (core);
   RPanelsMenu *menu = panels->panels_menu;
   RPanelsMenuItem *parent = menu->history[menu->depth - 1];
   parent->selectedIndex = i;
   RPanelsMenuItem *child = parent->sub[parent->selectedIndex];
   (void)(child->cb (core));
   __set_refresh_all (core, 0, 0);
   free (word);
   return 1;
  }
 }
 if (!strcmp (word, "Tab")) {
  __handle_tab_new (core);
  free (word);
  return 1;
 }
 if (word[0] == '[' && word[1] && word[2] == ']') {
  return 1;
 }
 if (atoi (word)) {
  __handle_tab_nth (core, word[0]);
  return 1;
 }
 return 0;
}
