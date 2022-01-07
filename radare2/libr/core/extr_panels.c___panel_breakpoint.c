
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int panels; } ;
struct TYPE_9__ {TYPE_1__* view; } ;
struct TYPE_8__ {int refresh; } ;
typedef TYPE_2__ RPanel ;
typedef TYPE_3__ RCore ;


 int PANEL_CMD_DISASSEMBLY ;
 scalar_t__ __check_panel_type (TYPE_2__*,int ) ;
 TYPE_2__* __get_cur_panel (int ) ;
 int r_core_cmd (TYPE_3__*,char*,int ) ;

void __panel_breakpoint(RCore *core) {
 RPanel *cur = __get_cur_panel (core->panels);
 if (__check_panel_type (cur, PANEL_CMD_DISASSEMBLY)) {
  r_core_cmd (core, "dbs $$", 0);
  cur->view->refresh = 1;
 }
}
