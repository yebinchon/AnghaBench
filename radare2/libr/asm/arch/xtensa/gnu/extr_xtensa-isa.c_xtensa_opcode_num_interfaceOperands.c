
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t xtensa_opcode ;
struct TYPE_7__ {TYPE_2__* iclasses; TYPE_1__* opcodes; } ;
typedef TYPE_3__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
struct TYPE_6__ {int num_interfaceOperands; } ;
struct TYPE_5__ {int iclass_id; } ;


 int CHECK_OPCODE (TYPE_3__*,size_t,int ) ;
 int XTENSA_UNDEFINED ;

int
xtensa_opcode_num_interfaceOperands (xtensa_isa isa, xtensa_opcode opc)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  int iclass_id;

  CHECK_OPCODE (intisa, opc, XTENSA_UNDEFINED);
  iclass_id = intisa->opcodes[opc].iclass_id;
  return intisa->iclasses[iclass_id].num_interfaceOperands;
}
