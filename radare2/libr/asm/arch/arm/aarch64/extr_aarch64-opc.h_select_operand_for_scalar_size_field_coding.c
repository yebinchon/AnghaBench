
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** qualifiers_list; int * operands; } ;
typedef TYPE_1__ aarch64_opcode ;


 scalar_t__ AARCH64_OPND_CLASS_SISD_REG ;
 scalar_t__ aarch64_get_operand_class (int ) ;
 int aarch64_get_qualifier_esize (int ) ;
 int abort () ;
 int assert (int ) ;

__attribute__((used)) static inline int
select_operand_for_scalar_size_field_coding (const aarch64_opcode *opcode)
{
  int src_size = 0, dst_size = 0;
  if (aarch64_get_operand_class (opcode->operands[0])
      == AARCH64_OPND_CLASS_SISD_REG)
    dst_size = aarch64_get_qualifier_esize (opcode->qualifiers_list[0][0]);
  if (aarch64_get_operand_class (opcode->operands[1])
      == AARCH64_OPND_CLASS_SISD_REG)
    src_size = aarch64_get_qualifier_esize (opcode->qualifiers_list[0][1]);
  if (src_size == dst_size && src_size == 0)
    { assert (0); abort (); }

  if (dst_size == 0 || dst_size == src_size << 1)
    return 1;
  else
    return 0;
}
