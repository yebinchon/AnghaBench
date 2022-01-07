
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int imm; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ op; } ;
typedef TYPE_2__ HexOp ;


 scalar_t__ HEX_OP_TYPE_IMM ;
 int constant_extender ;

void hex_op_extend(HexOp *op)
{
 if ((constant_extender != 1) && (op->type == HEX_OP_TYPE_IMM)) {
  op->op.imm = ((op->op.imm) & 0x3F) | (constant_extender);
 }
 constant_extender = 1;
}
