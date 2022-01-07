
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
typedef int bfd_boolean ;
struct TYPE_5__ {int value; } ;
struct TYPE_6__ {int amount; int operator_present; int amount_present; int kind; } ;
struct TYPE_7__ {TYPE_1__ imm; TYPE_2__ shifter; } ;
typedef TYPE_3__ aarch64_opnd_info ;


 int AARCH64_MOD_LSL ;
 int TRUE ;

__attribute__((used)) static bfd_boolean
decode_sve_aimm (aarch64_opnd_info *info, int64_t value)
{
  info->shifter.kind = AARCH64_MOD_LSL;
  info->shifter.amount = 0;
  if (info->imm.value & 0x100)
    {
      if (value == 0)

 info->shifter.amount = 8;
      else
 value *= 256;
    }
  info->shifter.operator_present = (info->shifter.amount != 0);
  info->shifter.amount_present = (info->shifter.amount != 0);
  info->imm.value = value;
  return TRUE;
}
