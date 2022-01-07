
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum aarch64_opnd { ____Placeholder_aarch64_opnd } aarch64_opnd ;
struct TYPE_3__ {int* operands; } ;
typedef TYPE_1__ aarch64_opcode ;


 int AARCH64_MAX_OPND_NUM ;
 int const AARCH64_OPND_NIL ;
 int assert (int) ;

int
aarch64_num_of_operands (const aarch64_opcode *opcode)
{
  int i = 0;
  const enum aarch64_opnd *opnds = opcode->operands;
  while (opnds[i++] != AARCH64_OPND_NIL)
    ;
  --i;
  assert (i >= 0 && i <= AARCH64_MAX_OPND_NUM);
  return i;
}
