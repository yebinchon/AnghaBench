
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xtensa_sysreg ;
struct TYPE_2__ {int* max_sysreg_num; scalar_t__** sysreg_table; } ;
typedef TYPE_1__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;


 scalar_t__ XTENSA_UNDEFINED ;
 int strcpy (int ,char*) ;
 int xtensa_isa_bad_sysreg ;
 int xtisa_errno ;
 int xtisa_error_msg ;

xtensa_sysreg
xtensa_sysreg_lookup (xtensa_isa isa, int num, int is_user)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;

  if (is_user != 0) {
   is_user = 1;
  }

  if (num < 0 || num > intisa->max_sysreg_num[is_user]
      || intisa->sysreg_table[is_user][num] == XTENSA_UNDEFINED)
    {
      xtisa_errno = xtensa_isa_bad_sysreg;
      strcpy (xtisa_error_msg, "sysreg not recognized");
      return XTENSA_UNDEFINED;
    }

  return intisa->sysreg_table[is_user][num];
}
