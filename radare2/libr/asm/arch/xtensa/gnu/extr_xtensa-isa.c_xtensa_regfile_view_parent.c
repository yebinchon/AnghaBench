
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t xtensa_regfile ;
struct TYPE_5__ {TYPE_1__* regfiles; } ;
typedef TYPE_2__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
struct TYPE_4__ {size_t parent; } ;


 int CHECK_REGFILE (TYPE_2__*,size_t,int ) ;
 int XTENSA_UNDEFINED ;

xtensa_regfile
xtensa_regfile_view_parent (xtensa_isa isa, xtensa_regfile rf)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  CHECK_REGFILE (intisa, rf, XTENSA_UNDEFINED);
  return intisa->regfiles[rf].parent;
}
