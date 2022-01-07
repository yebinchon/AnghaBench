
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aarch64_opnd_info {int qualifier; scalar_t__ type; } ;
typedef int aarch64_opnd_qualifier_t ;






 scalar_t__ aarch64_operands ;
 int aarch64_stack_pointer_p (struct aarch64_opnd_info const*) ;
 int operand_maybe_stack_pointer (scalar_t__) ;

__attribute__((used)) static inline int
operand_also_qualified_p (const struct aarch64_opnd_info *operand,
     aarch64_opnd_qualifier_t target)
{
  switch (operand->qualifier)
    {
    case 130:
      if (target == 129 && aarch64_stack_pointer_p (operand))
 return 1;
      break;
    case 128:
      if (target == 131 && aarch64_stack_pointer_p (operand))
 return 1;
      break;
    case 129:
      if (target == 130
   && operand_maybe_stack_pointer (aarch64_operands + operand->type))
 return 1;
      break;
    case 131:
      if (target == 128
   && operand_maybe_stack_pointer (aarch64_operands + operand->type))
 return 1;
      break;
    default:
      break;
    }

  return 0;
}
