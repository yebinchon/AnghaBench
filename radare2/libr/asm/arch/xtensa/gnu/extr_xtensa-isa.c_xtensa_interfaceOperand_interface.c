
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t xtensa_opcode ;
struct TYPE_8__ {TYPE_3__* iclasses; TYPE_1__* opcodes; } ;
typedef TYPE_2__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef int xtensa_interface ;
struct TYPE_9__ {int * interfaceOperands; } ;
typedef TYPE_3__ xtensa_iclass_internal ;
struct TYPE_7__ {int iclass_id; } ;


 int CHECK_INTERFACE_OPERAND (TYPE_2__*,size_t,TYPE_3__*,int,int ) ;
 int CHECK_OPCODE (TYPE_2__*,size_t,int ) ;
 int XTENSA_UNDEFINED ;

xtensa_interface
xtensa_interfaceOperand_interface (xtensa_isa isa, xtensa_opcode opc,
       int ifOp)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  xtensa_iclass_internal *iclass;
  int iclass_id;

  CHECK_OPCODE (intisa, opc, XTENSA_UNDEFINED);
  iclass_id = intisa->opcodes[opc].iclass_id;
  iclass = &intisa->iclasses[iclass_id];
  CHECK_INTERFACE_OPERAND (intisa, opc, iclass, ifOp, XTENSA_UNDEFINED);
  return iclass->interfaceOperands[ifOp];
}
