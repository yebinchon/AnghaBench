
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fun; } ;
struct TYPE_7__ {char const* key; TYPE_1__ u; } ;
typedef TYPE_2__ xtensa_lookup_entry ;
struct TYPE_8__ {scalar_t__ num_funcUnits; int funcUnit_lookup_table; } ;
typedef TYPE_3__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef int xtensa_funcUnit ;


 int XTENSA_UNDEFINED ;
 TYPE_2__* bsearch (TYPE_2__*,int ,scalar_t__,int,int ) ;
 int sprintf (int ,char*,char const*) ;
 int strcpy (int ,char*) ;
 int xtensa_isa_bad_funcUnit ;
 int xtensa_isa_name_compare ;
 int xtisa_errno ;
 int xtisa_error_msg ;

xtensa_funcUnit
xtensa_funcUnit_lookup (xtensa_isa isa, const char *fname)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  xtensa_lookup_entry entry, *result = 0;

  if (!fname || !*fname)
    {
      xtisa_errno = xtensa_isa_bad_funcUnit;
      strcpy (xtisa_error_msg, "invalid functional unit name");
      return XTENSA_UNDEFINED;
    }

  if (intisa->num_funcUnits != 0)
    {
      entry.key = fname;
      result = bsearch (&entry, intisa->funcUnit_lookup_table,
   intisa->num_funcUnits, sizeof (xtensa_lookup_entry),
   xtensa_isa_name_compare);
    }

  if (!result)
    {
      xtisa_errno = xtensa_isa_bad_funcUnit;
      sprintf (xtisa_error_msg,
        "functional unit \"%s\" not recognized", fname);
      return XTENSA_UNDEFINED;
    }

  return result->u.fun;
}
