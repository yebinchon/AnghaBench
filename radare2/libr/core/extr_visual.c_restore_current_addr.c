
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_7__ {int cur; int screen_bounds; int ocur; scalar_t__ cur_enabled; } ;
struct TYPE_6__ {int offset; TYPE_3__* print; } ;
typedef TYPE_1__ RCore ;


 int r_core_block_size (TYPE_1__*,int) ;
 int r_core_seek (TYPE_1__*,int,int) ;
 int reset_print_cur (TYPE_3__*) ;

__attribute__((used)) static void restore_current_addr(RCore *core, ut64 addr, ut64 bsze, ut64 newaddr) {
 bool restore_seek = 1;
 if (core->offset != newaddr) {
  bool cursor_moved = 0;


  if (core->print->cur != -1 && core->print->screen_bounds > 1) {
   if (core->offset >= addr &&
       core->offset < core->print->screen_bounds) {
    core->print->ocur = -1;
    core->print->cur = core->offset - addr;
    cursor_moved = 1;
   }
  }

  if (!cursor_moved) {
   restore_seek = 0;
   reset_print_cur (core->print);
  }
 }

 if (core->print->cur_enabled) {
  if (restore_seek) {
   r_core_seek (core, addr, 1);
   r_core_block_size (core, bsze);
  }
 }
}
