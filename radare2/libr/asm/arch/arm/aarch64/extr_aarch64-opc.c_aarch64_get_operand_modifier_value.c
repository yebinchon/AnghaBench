
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum aarch64_modifier_kind { ____Placeholder_aarch64_modifier_kind } aarch64_modifier_kind ;
typedef int aarch64_insn ;
struct TYPE_2__ {int value; } ;


 TYPE_1__* aarch64_operand_modifiers ;

aarch64_insn
aarch64_get_operand_modifier_value (enum aarch64_modifier_kind kind)
{
  return aarch64_operand_modifiers[kind].value;
}
