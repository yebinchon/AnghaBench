
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum aarch64_opnd { ____Placeholder_aarch64_opnd } aarch64_opnd ;
struct TYPE_2__ {char const* desc; } ;


 TYPE_1__* aarch64_operands ;

const char *
aarch64_get_operand_desc (enum aarch64_opnd type)
{
  return aarch64_operands[type].desc;
}
