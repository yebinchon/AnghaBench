
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum ExtReadWrite { ____Placeholder_ExtReadWrite } ExtReadWrite ;
struct TYPE_4__ {TYPE_1__* coreRegisters; } ;
struct TYPE_3__ {int rw; } ;


 int FIRST_EXTENSION_CORE_REGISTER ;
 int LAST_EXTENSION_CORE_REGISTER ;
 int REG_INVALID ;
 TYPE_2__ arc_extension_map ;

enum ExtReadWrite
arcExtMap_coreReadWrite (int regnum)
{
 if (regnum < FIRST_EXTENSION_CORE_REGISTER || regnum > LAST_EXTENSION_CORE_REGISTER) {
  return REG_INVALID;
 }
 return arc_extension_map.coreRegisters[regnum - FIRST_EXTENSION_CORE_REGISTER].rw;
}
