
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum aarch64_opnd { ____Placeholder_aarch64_opnd } aarch64_opnd ;


 int AARCH64_MAX_OPND_NUM ;
 int const AARCH64_OPND_NIL ;

int
aarch64_operand_index (const enum aarch64_opnd *operands, enum aarch64_opnd operand)
{
  int i;
  for (i = 0; i < AARCH64_MAX_OPND_NUM; ++i)
    if (operands[i] == operand)
      return i;
    else if (operands[i] == AARCH64_OPND_NIL)
      break;
  return -1;
}
