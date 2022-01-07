
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t xtensa_opcode ;
struct TYPE_10__ {TYPE_4__* iclasses; TYPE_2__* opcodes; } ;
typedef TYPE_3__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
struct TYPE_11__ {TYPE_1__* operands; } ;
typedef TYPE_4__ xtensa_iclass_internal ;
struct TYPE_9__ {int iclass_id; } ;
struct TYPE_8__ {char inout; } ;


 int CHECK_OPCODE (TYPE_3__*,size_t,int ) ;
 int CHECK_OPERAND (TYPE_3__*,size_t,TYPE_4__*,int,int ) ;

char
xtensa_operand_inout (xtensa_isa isa, xtensa_opcode opc, int opnd)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  xtensa_iclass_internal *iclass;
  int iclass_id;
  char inout;

  CHECK_OPCODE (intisa, opc, 0);
  iclass_id = intisa->opcodes[opc].iclass_id;
  iclass = &intisa->iclasses[iclass_id];
  CHECK_OPERAND (intisa, opc, iclass, opnd, 0);
  inout = iclass->operands[opnd].inout;


  if (inout == 's') {
   return 'o';
  }

  return inout;
}
