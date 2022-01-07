
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ funcUnit_lookup_table; scalar_t__ interface_lookup_table; scalar_t__* sysreg_table; scalar_t__ sysreg_lookup_table; scalar_t__ state_lookup_table; scalar_t__ opname_lookup_table; } ;
typedef TYPE_1__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;


 int free (scalar_t__) ;

void
xtensa_isa_free (xtensa_isa isa)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  int n;






  if (intisa->opname_lookup_table)
    {
      free (intisa->opname_lookup_table);
      intisa->opname_lookup_table = 0;
    }

  if (intisa->state_lookup_table)
    {
      free (intisa->state_lookup_table);
      intisa->state_lookup_table = 0;
    }

  if (intisa->sysreg_lookup_table)
    {
      free (intisa->sysreg_lookup_table);
      intisa->sysreg_lookup_table = 0;
    }
  for (n = 0; n < 2; n++)
    {
      if (intisa->sysreg_table[n])
 {
   free (intisa->sysreg_table[n]);
   intisa->sysreg_table[n] = 0;
 }
    }

  if (intisa->interface_lookup_table)
    {
      free (intisa->interface_lookup_table);
      intisa->interface_lookup_table = 0;
    }

  if (intisa->funcUnit_lookup_table)
    {
      free (intisa->funcUnit_lookup_table);
      intisa->funcUnit_lookup_table = 0;
    }
}
