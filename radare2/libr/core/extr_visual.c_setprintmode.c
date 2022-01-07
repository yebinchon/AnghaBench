
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int printidx; int inc; int blocksize; int block; int assembler; } ;
typedef TYPE_1__ RCore ;
typedef int RAsmOp ;


 int NPF ;
 int R_ABS (int) ;



 int R_MIN (int,int ) ;
 int r_asm_disassemble (int ,int *,int ,int ) ;
 int r_asm_op_fini (int *) ;
 int r_asm_op_init (int *) ;

__attribute__((used)) static void setprintmode(RCore *core, int n) {
 RAsmOp op;

 if (n > 0) {
  core->printidx = R_ABS ((core->printidx + 1) % NPF);
 } else {
  if (core->printidx) {
   core->printidx--;
  } else {
   core->printidx = NPF - 1;
  }
 }
 switch (core->printidx) {
 case 128:
  core->inc = 16;
  break;
 case 129:
 case 130:
  r_asm_op_init (&op);
  core->inc = r_asm_disassemble (core->assembler, &op, core->block, R_MIN (32, core->blocksize));
  r_asm_op_fini (&op);
  break;
 }
}
