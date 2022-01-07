
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* formats; } ;
typedef TYPE_2__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef size_t xtensa_format ;
struct TYPE_4__ {int num_slots; } ;


 int CHECK_FORMAT (TYPE_2__*,size_t,int ) ;
 int XTENSA_UNDEFINED ;

int
xtensa_format_num_slots (xtensa_isa isa, xtensa_format fmt)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  CHECK_FORMAT (intisa, fmt, XTENSA_UNDEFINED);
  return intisa->formats[fmt].num_slots;
}
