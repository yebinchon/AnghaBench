
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ExtAuxRegister {long address; scalar_t__ name; struct ExtAuxRegister* next; } ;
struct TYPE_2__ {struct ExtAuxRegister* auxRegisters; } ;


 TYPE_1__ arc_extension_map ;

const char *
arcExtMap_auxRegName (long address)
{

  struct ExtAuxRegister *r;

  for (r = arc_extension_map.auxRegisters; r; r = r->next)
    {
   if (r->address == address) {
    return (const char *)r->name;
   }
    }
  return ((void*)0);
}
