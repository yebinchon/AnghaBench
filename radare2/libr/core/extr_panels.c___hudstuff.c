
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int offset; TYPE_1__* panels; } ;
struct TYPE_9__ {int n_panels; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanel ;
typedef TYPE_2__ RCore ;


 int PANEL_CMD_DISASSEMBLY ;
 scalar_t__ __check_panel_type (int *,int ) ;
 int * __get_cur_panel (TYPE_1__*) ;
 int * __get_panel (TYPE_1__*,int) ;
 int __set_panel_addr (TYPE_2__*,int *,int ) ;
 int __set_refresh_all (TYPE_2__*,int,int) ;
 int r_core_visual_hudstuff (TYPE_2__*) ;

void __hudstuff(RCore *core) {
 RPanels *panels = core->panels;
 RPanel *cur = __get_cur_panel (panels);
 r_core_visual_hudstuff (core);

 if (__check_panel_type (cur, PANEL_CMD_DISASSEMBLY)) {
  __set_panel_addr (core, cur, core->offset);
 } else {
  int i;
  for (i = 0; i < panels->n_panels; i++) {
   RPanel *panel = __get_panel (panels, i);
   if (__check_panel_type (panel, PANEL_CMD_DISASSEMBLY)) {
    __set_panel_addr (core, panel, core->offset);
    break;
   }
  }
 }
 __set_refresh_all (core, 1, 0);
}
