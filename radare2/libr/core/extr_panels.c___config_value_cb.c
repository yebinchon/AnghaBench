
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_19__ {int config; TYPE_1__* panels; } ;
struct TYPE_18__ {TYPE_3__* view; TYPE_2__* model; } ;
struct TYPE_17__ {int depth; int n_refresh; TYPE_6__** refreshPanels; TYPE_4__** history; } ;
struct TYPE_16__ {size_t selectedIndex; int name; TYPE_6__* p; struct TYPE_16__** sub; } ;
struct TYPE_15__ {int refresh; } ;
struct TYPE_14__ {int title; } ;
struct TYPE_13__ {TYPE_5__* panels_menu; } ;
typedef int RStrBuf ;
typedef TYPE_4__ RPanelsMenuItem ;
typedef TYPE_5__ RPanelsMenu ;
typedef TYPE_6__ RPanel ;
typedef TYPE_7__ RCore ;


 int __draw_menu (TYPE_7__*,TYPE_4__*) ;
 int __init_menu_disasm_asm_settings_layout ;
 int __init_menu_screen_settings_layout ;
 int __set_refresh_all (TYPE_7__*,int,int) ;
 char* __show_status_input (TYPE_7__*,char*) ;
 int __update_menu (TYPE_7__*,char*,int ) ;
 int free (int ) ;
 int r_config_set (int ,int ,char const*) ;
 int r_str_split (int ,char) ;
 int r_strbuf_drain (int ) ;
 int r_strbuf_free (int *) ;
 int r_strbuf_get (int *) ;
 int * r_strbuf_new (int ) ;
 int strcmp (int ,char*) ;

int __config_value_cb(void *user) {
 RCore *core = (RCore *)user;
 RPanelsMenu *menu = core->panels->panels_menu;
 RPanelsMenuItem *parent = menu->history[menu->depth - 1];
 RPanelsMenuItem *child = parent->sub[parent->selectedIndex];
 RStrBuf *tmp = r_strbuf_new (child->name);
 (void)r_str_split (r_strbuf_get(tmp), ':');
 const char *v = __show_status_input (core, "New value: ");
 r_config_set (core->config, r_strbuf_get (tmp), v);
 r_strbuf_free (tmp);
 __set_refresh_all (core, 0, 0);
 free (parent->p->model->title);
 parent->p->model->title = r_strbuf_drain (__draw_menu (core, parent));
 int i;
 for (i = 1; i < menu->depth; i++) {
  RPanel *p = menu->history[i]->p;
  p->view->refresh = 1;
  menu->refreshPanels[menu->n_refresh++] = p;
 }
 if (!strcmp (parent->name, "asm")) {
  __update_menu(core, "Settings.Disassembly.asm", __init_menu_disasm_asm_settings_layout);
 }
 if (!strcmp (parent->name, "Screen")) {
  __update_menu(core, "Settings.Screen", __init_menu_screen_settings_layout);
 }
 return 0;
}
