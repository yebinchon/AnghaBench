
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_25__ ;
typedef struct TYPE_29__ TYPE_1__ ;


struct TYPE_36__ {TYPE_6__* panels; } ;
struct TYPE_35__ {int almighty_db; TYPE_5__* panels_menu; } ;
struct TYPE_34__ {int depth; TYPE_2__* root; TYPE_4__** history; } ;
struct TYPE_33__ {size_t selectedIndex; int (* cb ) (TYPE_7__*) ;struct TYPE_33__** sub; int n_sub; } ;
struct TYPE_32__ {int refresh; } ;
struct TYPE_31__ {size_t selectedIndex; size_t n_sub; TYPE_1__** sub; } ;
struct TYPE_30__ {TYPE_3__* view; } ;
struct TYPE_29__ {int (* cb ) (TYPE_7__*) ;} ;
typedef TYPE_4__ RPanelsMenuItem ;
typedef TYPE_5__ RPanelsMenu ;
typedef TYPE_6__ RPanels ;
typedef TYPE_7__ RCore ;


 int PANEL_MODE_DEFAULT ;
 size_t R_MIN (int ,int) ;
 int __create_almighty (TYPE_7__*,int ,int ) ;
 int __del_menu (TYPE_7__*) ;
 TYPE_25__* __get_cur_panel (TYPE_6__*) ;
 int __get_panel (TYPE_6__*,int ) ;
 int __handlePrompt (TYPE_7__*,TYPE_6__*) ;
 int __handle_tab_key (TYPE_7__*,int) ;
 int __set_mode (TYPE_7__*,int ) ;
 int __set_refresh_all (TYPE_7__*,int,int) ;
 int __toggle_help (TYPE_7__*) ;
 int __update_menu_contents (TYPE_7__*,TYPE_5__*,TYPE_4__*) ;
 int r_cons_switchbuf (int) ;
 int r_core_cmd0 (TYPE_7__*,char*) ;
 int stub1 (TYPE_7__*) ;
 int stub2 (TYPE_7__*) ;
 int stub3 (TYPE_7__*) ;
 int stub4 (TYPE_7__*) ;
 int stub5 (TYPE_7__*) ;

void __handle_menu(RCore *core, const int key) {
 RPanels *panels = core->panels;
 RPanelsMenu *menu = panels->panels_menu;
 RPanelsMenuItem *parent = menu->history[menu->depth - 1];
 RPanelsMenuItem *child = parent->sub[parent->selectedIndex];
 r_cons_switchbuf (0);
 switch (key) {
 case 'h':
  if (menu->depth <= 2) {
   if (menu->root->selectedIndex > 0) {
    menu->root->selectedIndex--;
   } else {
    menu->root->selectedIndex = menu->root->n_sub - 1;
   }
   if (menu->depth == 2) {
    menu->depth = 1;
    __set_refresh_all (core, 0, 0);
    (void)(menu->root->sub[menu->root->selectedIndex]->cb (core));
   }
  } else {
   __del_menu (core);
  }
  break;
 case 'j':
  {
   if (menu->depth == 1) {
    (void)(child->cb (core));
   } else {
    parent->selectedIndex = R_MIN (parent->n_sub - 1, parent->selectedIndex + 1);
    __update_menu_contents (core, menu, parent);
   }
  }
  break;
 case 'k':
  {
   if (menu->depth < 2) {
    break;
   }
   RPanelsMenuItem *parent = menu->history[menu->depth - 1];
   if (parent->selectedIndex > 0) {
    parent->selectedIndex--;
    __update_menu_contents (core, menu, parent);
   } else if (menu->depth == 2) {
    menu->depth--;
    __set_refresh_all (core, 0, 0);
   }
  }
  break;
 case 'l':
  {
   if (menu->depth == 1) {
    menu->root->selectedIndex++;
    menu->root->selectedIndex %= menu->root->n_sub;
    break;
   }
   if (parent->sub[parent->selectedIndex]->sub) {
    (void)(parent->sub[parent->selectedIndex]->cb (core));
   } else {
    menu->root->selectedIndex++;
    menu->root->selectedIndex %= menu->root->n_sub;
    menu->depth = 1;
    __set_refresh_all (core, 0, 0);
    (void)(menu->root->sub[menu->root->selectedIndex]->cb (core));
   }
  }
  break;
 case 'm':
 case 'q':
 case 'Q':
 case -1:
  if (panels->panels_menu->depth > 1) {
   __del_menu (core);
  } else {
   __set_mode (core, PANEL_MODE_DEFAULT);
   __get_cur_panel (panels)->view->refresh = 1;
  }
  break;
 case '$':
  r_core_cmd0 (core, "dr PC=$$");
  break;
 case ' ':
 case '\r':
 case '\n':
  (void)(child->cb (core));
  break;
 case 9:
  __handle_tab_key (core, 0);
  break;
 case 'Z':
  __handle_tab_key (core, 1);
  break;
 case ':':
  __handlePrompt (core, panels);
  break;
 case '?':
  __toggle_help (core);
 case '"':
  __create_almighty (core, __get_panel (panels, 0), panels->almighty_db);
  __set_mode (core, PANEL_MODE_DEFAULT);
  break;
 }
}
