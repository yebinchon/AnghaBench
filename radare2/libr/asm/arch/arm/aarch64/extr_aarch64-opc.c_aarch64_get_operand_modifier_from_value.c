
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum aarch64_modifier_kind { ____Placeholder_aarch64_modifier_kind } aarch64_modifier_kind ;
typedef scalar_t__ bfd_boolean ;
typedef int aarch64_insn ;


 int AARCH64_MOD_LSL ;
 int AARCH64_MOD_UXTB ;
 scalar_t__ TRUE ;

enum aarch64_modifier_kind
aarch64_get_operand_modifier_from_value (aarch64_insn value,
      bfd_boolean extend_p)
{
  if (extend_p == TRUE)
    return AARCH64_MOD_UXTB + value;
  else
    return AARCH64_MOD_LSL - value;
}
