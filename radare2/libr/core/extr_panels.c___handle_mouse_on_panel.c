
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_19__ {int num; int config; int * panels; } ;
struct TYPE_18__ {TYPE_2__* view; } ;
struct TYPE_16__ {int x; } ;
struct TYPE_17__ {TYPE_1__ pos; } ;
typedef int RPanels ;
typedef TYPE_3__ RPanel ;
typedef TYPE_4__ RCore ;


 int PANEL_CMD_DISASSEMBLY ;
 int PANEL_CMD_FUNCTION ;
 scalar_t__ __check_if_addr (char*,int ) ;
 scalar_t__ __check_panel_type (TYPE_3__*,int ) ;
 TYPE_3__* __get_panel (int *,int const) ;
 int __get_panel_idx_in_pos (TYPE_4__*,int,int) ;
 int __seek_all (TYPE_4__*,scalar_t__) ;
 int __set_addr_by_type (TYPE_4__*,int ,scalar_t__ const) ;
 int __set_curnode (TYPE_4__*,int const) ;
 int __set_refresh_all (TYPE_4__*,int,int) ;
 int free (char*) ;
 char* get_word_from_canvas (TYPE_4__*,int *,int,int) ;
 int r_config_set (int ,char*,char*) ;
 int r_cons_get_size (int*) ;
 int r_core_seek (TYPE_4__*,scalar_t__ const,int) ;
 void* r_num_math (int ,char*) ;
 int strlen (char*) ;

__attribute__((used)) static bool __handle_mouse_on_panel(RCore *core, RPanel *panel, int x, int y, int *key) {
 RPanels *panels = core->panels;
 int h;
 (void)r_cons_get_size (&h);
 const int idx = __get_panel_idx_in_pos (core, x, y);
 char *word = get_word_from_canvas (core, panels, x, y);
 if (idx == -1) {
  return 0;
 }
 __set_curnode (core, idx);
 __set_refresh_all (core, 1, 1);
 RPanel *ppos = __get_panel(panels, idx);
 if (word) {
  if (__check_panel_type (panel, PANEL_CMD_FUNCTION) &&
    __check_if_addr (word, strlen (word))) {
   const ut64 addr = r_num_math (core->num, word);
   r_core_seek (core, addr, 1);
   __set_addr_by_type (core, PANEL_CMD_DISASSEMBLY, addr);
  }
  r_config_set (core->config, "scr.highlight", word);


  {
   ut64 addr = r_num_math (core->num, word);
   if (addr > 0) {

    __seek_all (core, addr);
   }
  }

  free (word);
 }
 if (x >= ppos->view->pos.x && x < ppos->view->pos.x + 4) {
  *key = 'c';
  return 0;
 }
 return 1;
}
