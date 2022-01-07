
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int imm; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ op; } ;
typedef TYPE_2__ HexOp ;


 scalar_t__ HEX_OP_TYPE_IMM ;
 int constant_extender ;
 int hex_op_extend (TYPE_2__*) ;

void hex_op_extend_off(HexOp *op, int offset)
{
 if ((constant_extender != 1) && (op->type == HEX_OP_TYPE_IMM)) {
  op->op.imm = (op->op.imm) >> offset;
  hex_op_extend(op);
 }
}
