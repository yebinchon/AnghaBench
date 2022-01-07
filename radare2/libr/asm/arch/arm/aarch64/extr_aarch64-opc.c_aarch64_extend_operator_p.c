
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum aarch64_modifier_kind { ____Placeholder_aarch64_modifier_kind } aarch64_modifier_kind ;
typedef int bfd_boolean ;


 int AARCH64_MOD_LSL ;
 int AARCH64_MOD_SXTX ;
 int FALSE ;
 int TRUE ;

bfd_boolean
aarch64_extend_operator_p (enum aarch64_modifier_kind kind)
{
  return (kind > AARCH64_MOD_LSL && kind <= AARCH64_MOD_SXTX)
    ? TRUE : FALSE;
}
