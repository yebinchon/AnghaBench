
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ xtensa_operand_internal ;
typedef int xtensa_opcode ;
typedef int xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;


 int XTENSA_OPERAND_IS_PCRELATIVE ;
 int XTENSA_UNDEFINED ;
 TYPE_1__* get_operand (int *,int ,int) ;

int
xtensa_operand_is_PCrelative (xtensa_isa isa, xtensa_opcode opc, int opnd)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  xtensa_operand_internal *intop;

  intop = get_operand (intisa, opc, opnd);
  if (!intop) {
   return XTENSA_UNDEFINED;
  }

  if ((intop->flags & XTENSA_OPERAND_IS_PCRELATIVE) != 0) {
   return 1;
  }
  return 0;
}
