
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_25__ {int offset; TYPE_3__* print; TYPE_4__* panels; } ;
struct TYPE_24__ {TYPE_2__* model; TYPE_1__* view; } ;
struct TYPE_23__ {int mode; } ;
struct TYPE_22__ {int cols; int cur_enabled; } ;
struct TYPE_21__ {int addr; } ;
struct TYPE_20__ {int refresh; int sx; } ;
typedef TYPE_4__ RPanels ;
typedef TYPE_5__ RPanel ;
typedef TYPE_6__ RCore ;
typedef int RAsmOp ;
typedef int Direction ;




 int PANEL_MODE_ZOOM ;


 int __cursor_down (TYPE_6__*) ;
 int __cursor_left (TYPE_6__*) ;
 int __cursor_right (TYPE_6__*) ;
 int __cursor_up (TYPE_6__*) ;
 TYPE_5__* __get_cur_panel (TYPE_4__*) ;
 int __set_panel_addr (TYPE_6__*,TYPE_5__*,int ) ;
 int r_core_block_read (TYPE_6__*) ;
 int r_core_seek (TYPE_6__*,int ,int) ;
 int r_core_seek_delta (TYPE_6__*,int) ;
 int r_core_visual_disasm_down (TYPE_6__*,int *,int*) ;
 int r_core_visual_disasm_up (TYPE_6__*,int*) ;

void __direction_disassembly_cb(void *user, int direction) {
 RCore *core = (RCore *)user;
 RPanels *panels = core->panels;
 RPanel *cur = __get_cur_panel (panels);
 int cols = core->print->cols;
 cur->view->refresh = 1;
 switch ((Direction)direction) {
 case 130:
  if (core->print->cur_enabled) {
   __cursor_left (core);
   r_core_block_read (core);
   __set_panel_addr (core, cur, core->offset);
  } else if (panels->mode == PANEL_MODE_ZOOM) {
   cur->model->addr--;
  } else if (cur->view->sx > 0) {
   cur->view->sx--;
  }
  return;
 case 129:
  if (core->print->cur_enabled) {
   __cursor_right (core);
   r_core_block_read (core);
   __set_panel_addr (core, cur, core->offset);
  } else if (panels->mode == PANEL_MODE_ZOOM) {
   cur->model->addr++;
  } else {
   cur->view->sx++;
  }
  return;
 case 128:
  core->offset = cur->model->addr;
  if (core->print->cur_enabled) {
   __cursor_up (core);
   r_core_block_read (core);
   __set_panel_addr (core, cur, core->offset);
  } else {
   r_core_visual_disasm_up (core, &cols);
   r_core_seek_delta (core, -cols);
   __set_panel_addr (core, cur, core->offset);
  }
  return;
 case 131:
  core->offset = cur->model->addr;
  if (core->print->cur_enabled) {
   __cursor_down (core);
   r_core_block_read (core);
   __set_panel_addr (core, cur, core->offset);
  } else {
   RAsmOp op;
   r_core_visual_disasm_down (core, &op, &cols);
   r_core_seek (core, core->offset + cols, 1);
   __set_panel_addr (core, cur, core->offset);
  }
  return;
 }
}
