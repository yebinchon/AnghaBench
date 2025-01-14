
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_24__ {TYPE_1__* can; } ;
struct TYPE_23__ {int idx; int pos; } ;
struct TYPE_22__ {TYPE_7__* panels; } ;
struct TYPE_21__ {int const w; int const h; } ;
typedef int Sdb ;
typedef int (* RPanelAlmightyCallback ) (TYPE_2__*,int *,int ,char*) ;
typedef int RPanel ;
typedef TYPE_3__ RModal ;
typedef TYPE_2__ RCore ;


 int HORIZONTAL ;
 int INT8_MAX ;
 int NONE ;
 int R_STR_ISNOTEMPTY (char*) ;
 int VERTICAL ;
 int __delete_almighty (TYPE_2__*,TYPE_3__*,int *) ;
 int __exec_almighty (TYPE_2__*,int *,TYPE_3__*,int *,int ) ;
 int __free_modal (TYPE_3__**) ;
 TYPE_3__* __init_modal () ;
 int __replace_cmd (TYPE_2__*,char*,char*) ;
 int __set_cursor (TYPE_2__*,int) ;
 int __set_geometry (int *,int const,int const,int const,int const) ;
 int __set_refresh_all (TYPE_2__*,int,int) ;
 char* __show_status_input (TYPE_2__*,char*) ;
 int __update_modal (TYPE_2__*,int *,TYPE_3__*) ;
 int free (char*) ;
 char* get_word_from_canvas_for_menu (TYPE_2__*,TYPE_7__*,int,int) ;
 int r_cons_arrow_to_hjkl (int) ;
 scalar_t__ r_cons_get_click (int*,int*) ;
 int r_cons_readchar () ;
 void* sdb_ptr_get (int *,char*,int ) ;
 int stub1 (TYPE_2__*,int *,int ,char*) ;

void __create_almighty(RCore *core, RPanel *panel, Sdb *menu_db) {
 __set_cursor (core, 0);
 const int w = 40;
 const int h = 20;
 const int x = (core->panels->can->w - w) / 2;
 const int y = (core->panels->can->h - h) / 2;
 RModal *modal = __init_modal ();
 __set_geometry (&modal->pos, x, y, w, h);
 int okey, key, cx, cy;
 char *word = ((void*)0);
 __update_modal (core, menu_db, modal);
 while (modal) {
  okey = r_cons_readchar ();
  key = r_cons_arrow_to_hjkl (okey);
  word = ((void*)0);
  if (key == INT8_MAX - 1) {
   if (r_cons_get_click (&cx, &cy)) {
    if ((cx < x || x + w < cx) ||
       ((cy < y || y + h < cy))) {
     key = 'q';
    } else {
     word = get_word_from_canvas_for_menu (core, core->panels, cx, cy);
     if (word) {
      void *cb = sdb_ptr_get (menu_db, word, 0);
      if (cb) {
       ((RPanelAlmightyCallback)cb) (core, panel, NONE, word);
       __free_modal (&modal);
       free (word);
       break;
      }
      free (word);
     }
    }
   }
  }
  switch (key) {
  case 'e':
   {
    __free_modal (&modal);
    __set_refresh_all (core, 0, 0);
    char *cmd = __show_status_input (core, "New command: ");
    if (R_STR_ISNOTEMPTY (cmd)) {
     __replace_cmd (core, cmd, cmd);
    }
    free (cmd);
   }
  break;
  case 'j':
   modal->idx++;
   __update_modal (core, menu_db, modal);
   break;
  case 'k':
   modal->idx--;
   __update_modal (core, menu_db, modal);
   break;
  case 'v':
   __exec_almighty (core, panel, modal, menu_db, VERTICAL);
   __free_modal (&modal);
   break;
  case 'h':
   __exec_almighty (core, panel, modal, menu_db, HORIZONTAL);
   __free_modal (&modal);
   break;
  case 0x0d:
   __exec_almighty (core, panel, modal, menu_db, NONE);
   __free_modal (&modal);
   break;
  case '-':
   __delete_almighty (core, modal, menu_db);
   __update_modal (core, menu_db, modal);
   break;
  case 'q':
  case '"':
   __free_modal (&modal);
   break;
  }
 }
 __set_refresh_all (core, 0, 0);
}
