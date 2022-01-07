
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* coreRegisters; } ;
struct TYPE_3__ {char const* name; } ;


 int FIRST_EXTENSION_CORE_REGISTER ;
 int LAST_EXTENSION_CORE_REGISTER ;
 TYPE_2__ arc_extension_map ;

const char *
arcExtMap_coreRegName (int regnum)
{
 if (regnum < FIRST_EXTENSION_CORE_REGISTER || regnum > LAST_EXTENSION_CORE_REGISTER) {
  return ((void*)0);
 }
 return arc_extension_map.coreRegisters[regnum - FIRST_EXTENSION_CORE_REGISTER].name;
}
