
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xtensa_operand_internal ;
typedef size_t xtensa_opcode ;
struct TYPE_13__ {int * operands; TYPE_5__* iclasses; TYPE_3__* opcodes; } ;
typedef TYPE_4__ xtensa_isa_internal ;
struct TYPE_14__ {TYPE_2__* operands; } ;
typedef TYPE_5__ xtensa_iclass_internal ;
struct TYPE_12__ {int iclass_id; } ;
struct TYPE_10__ {int operand_id; } ;
struct TYPE_11__ {TYPE_1__ u; } ;


 int CHECK_OPCODE (TYPE_4__*,size_t,int *) ;
 int CHECK_OPERAND (TYPE_4__*,size_t,TYPE_5__*,int,int *) ;

__attribute__((used)) static xtensa_operand_internal *
get_operand (xtensa_isa_internal *intisa, xtensa_opcode opc, int opnd)
{
  xtensa_iclass_internal *iclass;
  int iclass_id, operand_id;

  CHECK_OPCODE (intisa, opc, ((void*)0));
  iclass_id = intisa->opcodes[opc].iclass_id;
  iclass = &intisa->iclasses[iclass_id];
  CHECK_OPERAND (intisa, opc, iclass, opnd, ((void*)0));
  operand_id = iclass->operands[opnd].u.operand_id;
  return &intisa->operands[operand_id];
}
