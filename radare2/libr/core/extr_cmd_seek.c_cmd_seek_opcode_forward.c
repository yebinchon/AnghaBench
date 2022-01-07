
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int blocksize; int block; int offset; int anal; } ;
typedef TYPE_1__ RCore ;
typedef int RAnalOp ;


 int R_ANAL_OP_MASK_BASIC ;
 int r_anal_op (int ,int *,int ,int ,int ,int ) ;
 int r_anal_op_fini (int *) ;
 int r_core_seek_delta (TYPE_1__*,int) ;

__attribute__((used)) static int cmd_seek_opcode_forward (RCore *core, int n) {

 int i, ret, val = 0;
 for (val = i = 0; i < n; i++) {
  RAnalOp op;
  ret = r_anal_op (core->anal, &op, core->offset, core->block,
   core->blocksize, R_ANAL_OP_MASK_BASIC);
  if (ret < 1) {
   ret = 1;
  }
  r_core_seek_delta (core, ret);
  r_anal_op_fini (&op);
  val += ret;
 }
 return val;
}
