
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int offset; } ;
struct TYPE_9__ {int n_panels; } ;
typedef TYPE_1__ RPanels ;
typedef int RPanel ;
typedef TYPE_2__ RCore ;


 int PANEL_CMD_DISASSEMBLY ;
 scalar_t__ __check_panel_type (int *,int ) ;
 int * __get_panel (TYPE_1__*,int) ;
 int __set_panel_addr (TYPE_2__*,int *,int ) ;
 int __set_refresh_all (TYPE_2__*,int,int) ;
 int r_core_visual_prompt_input (TYPE_2__*) ;

void __handlePrompt(RCore *core, RPanels *panels) {
 r_core_visual_prompt_input (core);
 int i;
 for (i = 0; i < panels->n_panels; i++) {
  RPanel *p = __get_panel (panels, i);
  if (__check_panel_type (p, PANEL_CMD_DISASSEMBLY)) {
   __set_panel_addr (core, p, core->offset);
   break;
  }
 }
 __set_refresh_all (core, 0, 0);
}
