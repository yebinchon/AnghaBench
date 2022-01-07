
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int panels; } ;
struct TYPE_9__ {TYPE_1__* model; } ;
struct TYPE_8__ {int rotate; int cmd; } ;
typedef TYPE_2__ RPanel ;
typedef TYPE_3__ RCore ;


 int PANEL_CMD_DECOMPILER ;
 int PANEL_CMD_DECOMPILER_O ;
 TYPE_2__* __get_cur_panel (int ) ;
 int __rotate_asmemu (TYPE_3__*,TYPE_2__*) ;
 int r_core_visual_applyDisMode (TYPE_3__*,int) ;
 int strcmp (int ,int ) ;

void __rotate_disasm_cb(void *user, bool rev) {
 RCore *core = (RCore *)user;
 RPanel *p = __get_cur_panel (core->panels);


 if (!strcmp (p->model->cmd, PANEL_CMD_DECOMPILER) ||
   !strcmp (p->model->cmd, PANEL_CMD_DECOMPILER_O)) {
  return;
 }

 if (rev) {
  if (!p->model->rotate) {
   p->model->rotate = 4;
  } else {
   p->model->rotate--;
  }
 } else {
  p->model->rotate++;
 }
 r_core_visual_applyDisMode (core, p->model->rotate);
 __rotate_asmemu (core, p);
}
