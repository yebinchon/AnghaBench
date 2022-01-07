
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {TYPE_1__* panels; } ;
struct TYPE_19__ {int curnode; int fun; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanel ;
typedef TYPE_2__ RCore ;


 int DOWN ;
 int HORIZONTAL ;
 int LEFT ;
 int PANEL_FUN_SAKURA ;
 int PANEL_FUN_SNOW ;
 int RIGHT ;
 int R_STR_ISNOTEMPTY (char*) ;
 int UP ;
 int VERTICAL ;
 int __create_panel_input (TYPE_2__*,int *,int ,int *) ;
 int __dismantle_del_panel (TYPE_2__*,int *,int ) ;
 int * __get_cur_panel (TYPE_1__*) ;
 int __handle_tab_key (TYPE_2__*,int) ;
 int __move_to_direction (TYPE_2__*,int ) ;
 int __replace_cmd (TYPE_2__*,char*,char*) ;
 int __reset_snow (TYPE_1__*) ;
 int __resize_panel_down (TYPE_1__*) ;
 int __resize_panel_left (TYPE_1__*) ;
 int __resize_panel_right (TYPE_1__*) ;
 int __resize_panel_up (TYPE_1__*) ;
 int __set_refresh_all (TYPE_2__*,int,int) ;
 char* __show_status_input (TYPE_2__*,char*) ;
 int __toggle_window_mode (TYPE_2__*) ;
 int __toggle_zoom_mode (TYPE_2__*) ;
 int free (char*) ;
 int r_cons_switchbuf (int) ;

bool __handle_window_mode(RCore *core, const int key) {
 RPanels *panels = core->panels;
 RPanel *cur = __get_cur_panel (panels);
 r_cons_switchbuf (0);
 switch (key) {
 case 'Q':
 case 'q':
 case 'w':
  __toggle_window_mode (core);
  break;
 case 0x0d:
  __toggle_zoom_mode (core);
  break;
 case 9:
  __handle_tab_key (core, 0);
  break;
 case 'Z':
  __handle_tab_key (core, 1);
  break;
 case 'e':
 {
  char *cmd = __show_status_input (core, "New command: ");
  if (R_STR_ISNOTEMPTY (cmd)) {
   __replace_cmd (core, cmd, cmd);
  }
  free (cmd);
 }
  break;
 case 'h':
  if (__move_to_direction (core, LEFT)) {
   __set_refresh_all (core, 0, 0);
  }
  if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
   __reset_snow (panels);
  }
  break;
 case 'j':
  if (__move_to_direction (core, DOWN)) {
   __set_refresh_all (core, 0, 0);
  }
  if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
   __reset_snow (panels);
  }
  break;
 case 'k':
  if (__move_to_direction (core, UP)) {
   __set_refresh_all (core, 0, 0);
  }
  if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
   __reset_snow (panels);
  }
  break;
 case 'l':
  if (__move_to_direction (core, RIGHT)) {
   __set_refresh_all (core, 0, 0);
  }
  if (panels->fun == PANEL_FUN_SNOW || panels->fun == PANEL_FUN_SAKURA) {
   __reset_snow (panels);
  }
  break;
 case 'H':
  r_cons_switchbuf (0);
  __resize_panel_left (panels);
  break;
 case 'L':
  r_cons_switchbuf (0);
  __resize_panel_right (panels);
  break;
 case 'J':
  r_cons_switchbuf (0);
  __resize_panel_down (panels);
  break;
 case 'K':
  r_cons_switchbuf (0);
  __resize_panel_up (panels);
  break;
 case 'n':
  __create_panel_input (core, cur, VERTICAL, ((void*)0));
  break;
 case 'N':
  __create_panel_input (core, cur, HORIZONTAL, ((void*)0));
  break;
 case 'X':
  __dismantle_del_panel (core, cur, panels->curnode);
  __set_refresh_all (core, 0, 0);
  break;
 case '"':
 case ':':
 case ';':
 case '/':
 case 'd':
 case 'b':
 case 'p':
 case 'P':
 case 't':
 case 'T':
 case '?':
 case '|':
 case '-':
  return 0;
 }
 return 1;
}
