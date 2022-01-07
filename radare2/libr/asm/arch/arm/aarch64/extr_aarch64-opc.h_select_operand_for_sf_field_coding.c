
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * operands; } ;
typedef TYPE_1__ aarch64_opcode ;


 scalar_t__ AARCH64_OPND_CLASS_INT_REG ;
 scalar_t__ aarch64_get_operand_class (int ) ;
 int abort () ;
 int assert (int ) ;

__attribute__((used)) static inline int
select_operand_for_sf_field_coding (const aarch64_opcode *opcode)
{
  int idx = -1;
  if (aarch64_get_operand_class (opcode->operands[0])
      == AARCH64_OPND_CLASS_INT_REG)

    idx = 0;
  else if (aarch64_get_operand_class (opcode->operands[1])
    == AARCH64_OPND_CLASS_INT_REG)

    idx = 1;
  else
    { assert (0); abort (); }
  return idx;
}
