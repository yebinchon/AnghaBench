
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {TYPE_2__* panels; } ;
struct TYPE_16__ {TYPE_1__* view; } ;
struct TYPE_15__ {scalar_t__ mode; scalar_t__ fun; scalar_t__ curnode; scalar_t__ n_panels; } ;
struct TYPE_14__ {int refresh; } ;
typedef TYPE_2__ RPanels ;
typedef TYPE_3__ RPanel ;
typedef TYPE_4__ RCore ;


 int PANEL_CMD_DISASSEMBLY ;
 scalar_t__ PANEL_FUN_SAKURA ;
 scalar_t__ PANEL_FUN_SNOW ;
 int PANEL_MODE_DEFAULT ;
 scalar_t__ PANEL_MODE_MENU ;
 scalar_t__ PANEL_MODE_ZOOM ;
 scalar_t__ __check_panel_type (TYPE_3__*,int ) ;
 TYPE_3__* __get_cur_panel (TYPE_2__*) ;
 int __reset_snow (TYPE_2__*) ;
 int __set_curnode (TYPE_4__*,scalar_t__) ;
 int __set_cursor (TYPE_4__*,int) ;
 int __set_mode (TYPE_4__*,int ) ;
 int __set_refresh_all (TYPE_4__*,int,int) ;
 int r_cons_switchbuf (int) ;

void __handle_tab_key(RCore *core, bool shift) {
 __set_cursor (core, 0);
 RPanels *panels = core->panels;
 RPanel *cur = __get_cur_panel (panels);
 r_cons_switchbuf (0);
 cur->view->refresh = 1;
 if (!shift) {
  if (panels->mode == PANEL_MODE_MENU) {
   __set_curnode (core, 0);
   __set_mode (core, PANEL_MODE_DEFAULT);
  } else if (panels->mode == PANEL_MODE_ZOOM) {
   __set_curnode (core, ++panels->curnode);
  } else {
   __set_curnode (core, ++panels->curnode);
  }
 } else {
  if (panels->mode == PANEL_MODE_MENU) {
   __set_curnode (core, panels->n_panels - 1);
   __set_mode (core, PANEL_MODE_DEFAULT);
  } else if (panels->mode == PANEL_MODE_ZOOM) {
   __set_curnode (core, --panels->curnode);
  } else {
   __set_curnode (core, --panels->curnode);
  }
 }
 cur = __get_cur_panel (panels);
 if (__check_panel_type (cur, PANEL_CMD_DISASSEMBLY)) {
  __set_refresh_all (core, 0, 0);
  return;
 }
 cur->view->refresh = 1;
 if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
  __reset_snow (panels);
 }
}
