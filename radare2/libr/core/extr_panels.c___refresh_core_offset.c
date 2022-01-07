
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int offset; int * panels; } ;
struct TYPE_8__ {TYPE_1__* model; } ;
struct TYPE_7__ {int addr; } ;
typedef int RPanels ;
typedef TYPE_2__ RPanel ;
typedef TYPE_3__ RCore ;


 int PANEL_CMD_DISASSEMBLY ;
 scalar_t__ __check_panel_type (TYPE_2__*,int ) ;
 TYPE_2__* __get_cur_panel (int *) ;

void __refresh_core_offset (RCore *core) {
 RPanels *panels = core->panels;
 RPanel *cur = __get_cur_panel (panels);
 if (__check_panel_type (cur, PANEL_CMD_DISASSEMBLY)) {
  core->offset = cur->model->addr;
 }
}
