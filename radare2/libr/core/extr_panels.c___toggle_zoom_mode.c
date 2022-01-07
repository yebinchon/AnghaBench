
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* panels; } ;
struct TYPE_9__ {scalar_t__ mode; scalar_t__ prevMode; scalar_t__ fun; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanel ;
typedef TYPE_2__ RCore ;


 scalar_t__ PANEL_FUN_SAKURA ;
 scalar_t__ PANEL_FUN_SNOW ;
 scalar_t__ PANEL_MODE_DEFAULT ;
 scalar_t__ PANEL_MODE_ZOOM ;
 int * __get_cur_panel (TYPE_1__*) ;
 int __maximize_panel_size (TYPE_1__*) ;
 int __reset_snow (TYPE_1__*) ;
 int __restore_panel_pos (int *) ;
 int __save_panel_pos (int *) ;
 int __set_mode (TYPE_2__*,scalar_t__) ;
 int __set_refresh_all (TYPE_2__*,int,int) ;

void __toggle_zoom_mode(RCore *core) {
 RPanels *panels = core->panels;
 RPanel *cur = __get_cur_panel (panels);
 if (panels->mode != PANEL_MODE_ZOOM) {
  panels->prevMode = panels->mode;
  __set_mode (core, PANEL_MODE_ZOOM);
  __save_panel_pos (cur);
  __maximize_panel_size (panels);
 } else {
  __set_mode (core, panels->prevMode);
  panels->prevMode = PANEL_MODE_DEFAULT;
  __restore_panel_pos (cur);
  __set_refresh_all (core, 0, 0);
  if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
   __reset_snow (panels);
  }
 }
}
