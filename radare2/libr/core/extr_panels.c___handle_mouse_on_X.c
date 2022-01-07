
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_25__ {TYPE_3__* panels; } ;
struct TYPE_24__ {TYPE_2__* view; } ;
struct TYPE_23__ {int almighty_db; } ;
struct TYPE_21__ {int y; int x; int w; } ;
struct TYPE_22__ {TYPE_1__ pos; } ;
typedef TYPE_3__ RPanels ;
typedef TYPE_4__ RPanel ;
typedef TYPE_5__ RCore ;


 int PANEL_MODE_DEFAULT ;
 int __create_almighty (TYPE_5__*,TYPE_4__*,int ) ;
 int __dismantle_del_panel (TYPE_5__*,TYPE_4__*,int const) ;
 int __get_cur_panel (TYPE_3__*) ;
 TYPE_4__* __get_panel (TYPE_3__*,int const) ;
 int __get_panel_idx_in_pos (TYPE_5__*,int,int) ;
 int __set_curnode (TYPE_5__*,int const) ;
 int __set_mode (TYPE_5__*,int ) ;
 int __set_refresh_all (TYPE_5__*,int,int) ;
 int __toggle_cache (TYPE_5__*,int ) ;
 int free (char*) ;
 char* get_word_from_canvas (TYPE_5__*,TYPE_3__*,int,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool __handle_mouse_on_X(RCore *core, int x, int y) {
 RPanels *panels = core->panels;
 const int idx = __get_panel_idx_in_pos (core, x, y);
 char *word = get_word_from_canvas (core, panels, x, y);
 if (idx == -1) {
  return 0;
 }
 RPanel *ppos = __get_panel(panels, idx);
 const int TITLE_Y = ppos->view->pos.y + 2;
 if (y == TITLE_Y && strcmp (word, " X ")) {
  int fx = ppos->view->pos.x;
  int fX = fx + ppos->view->pos.w;
  __set_curnode (core, idx);
  __set_refresh_all (core, 1, 1);
  if (x > (fX - 13) && x < fX) {
   __toggle_cache (core, __get_cur_panel (panels));
  } else if (x > fx && x < (fx + 5)) {
   __dismantle_del_panel (core, ppos, idx);
  } else {
   __create_almighty (core, __get_panel (panels, 0), panels->almighty_db);
   __set_mode (core, PANEL_MODE_DEFAULT);
  }
  __set_refresh_all (core, 0, 0);
  free (word);
  return 1;
 }
 free (word);
 return 0;
}
