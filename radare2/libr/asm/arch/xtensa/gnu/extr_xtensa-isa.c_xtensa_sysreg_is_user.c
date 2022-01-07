
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t xtensa_sysreg ;
struct TYPE_5__ {TYPE_1__* sysregs; } ;
typedef TYPE_2__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
struct TYPE_4__ {scalar_t__ is_user; } ;


 int CHECK_SYSREG (TYPE_2__*,size_t,int ) ;
 int XTENSA_UNDEFINED ;

int
xtensa_sysreg_is_user (xtensa_isa isa, xtensa_sysreg sysreg)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  CHECK_SYSREG (intisa, sysreg, XTENSA_UNDEFINED);
  if (intisa->sysregs[sysreg].is_user) {
   return 1;
  }
  return 0;
}
