
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int offset; int io; int panels; } ;
struct TYPE_7__ {int off; } ;
typedef int RPanel ;
typedef TYPE_1__ RIOUndos ;
typedef TYPE_2__ RCore ;


 int PANEL_CMD_DISASSEMBLY ;
 int __check_panel_type (int *,int ) ;
 int * __get_cur_panel (int ) ;
 int __set_panel_addr (TYPE_2__*,int *,int ) ;
 int r_core_visual_seek_animation (TYPE_2__*,int ) ;
 TYPE_1__* r_io_sundo_redo (int ) ;

void __redo_seek(RCore *core) {
 RPanel *cur = __get_cur_panel (core->panels);
 if (!__check_panel_type (cur, PANEL_CMD_DISASSEMBLY)) {
  return;
 }
 RIOUndos *undo = r_io_sundo_redo (core->io);
 if (undo) {
  r_core_visual_seek_animation (core, undo->off);
  __set_panel_addr (core, cur, core->offset);
 }
}
