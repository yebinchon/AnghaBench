
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ offset; int block; int assembler; TYPE_1__* print; } ;
struct TYPE_5__ {scalar_t__ cur; scalar_t__ screen_bounds; int ocur; } ;
typedef TYPE_1__ RPrint ;
typedef TYPE_2__ RCore ;
typedef int RAsmOp ;


 void* R_MAX (int ,int ) ;
 int r_asm_disassemble (int ,int *,int ,int) ;
 int r_core_seek_delta (TYPE_2__*,int) ;

void __fix_cursor_down(RCore *core) {
 RPrint *print = core->print;
 bool cur_is_visible = core->offset + print->cur + 32 < print->screen_bounds;
 if (!cur_is_visible) {
  int i = 0;

  for (i = 0; i < 2; i++) {
   RAsmOp op;
   int sz = r_asm_disassemble (core->assembler,
     &op, core->block, 32);
   if (sz < 1) {
    sz = 1;
   }
   r_core_seek_delta (core, sz);
   print->cur = R_MAX (print->cur - sz, 0);
   if (print->ocur != -1) {
    print->ocur = R_MAX (print->ocur - sz, 0);
   }
  }
 }
}
