
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* interfaces; } ;
typedef TYPE_2__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef size_t xtensa_interface ;
struct TYPE_4__ {char inout; } ;


 int CHECK_INTERFACE (TYPE_2__*,size_t,int ) ;

char
xtensa_interface_inout (xtensa_isa isa, xtensa_interface intf)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  CHECK_INTERFACE (intisa, intf, 0);
  return intisa->interfaces[intf].inout;
}
