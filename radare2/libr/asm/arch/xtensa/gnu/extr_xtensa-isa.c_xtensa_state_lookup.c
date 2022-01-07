
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xtensa_state ;
struct TYPE_6__ {int state; } ;
struct TYPE_7__ {char const* key; TYPE_1__ u; } ;
typedef TYPE_2__ xtensa_lookup_entry ;
struct TYPE_8__ {scalar_t__ num_states; int state_lookup_table; } ;
typedef TYPE_3__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;


 int XTENSA_UNDEFINED ;
 TYPE_2__* bsearch (TYPE_2__*,int ,scalar_t__,int,int ) ;
 int sprintf (int ,char*,char const*) ;
 int strcpy (int ,char*) ;
 int xtensa_isa_bad_state ;
 int xtensa_isa_name_compare ;
 int xtisa_errno ;
 int xtisa_error_msg ;

xtensa_state
xtensa_state_lookup (xtensa_isa isa, const char *name)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  xtensa_lookup_entry entry, *result = 0;

  if (!name || !*name)
    {
      xtisa_errno = xtensa_isa_bad_state;
      strcpy (xtisa_error_msg, "invalid state name");
      return XTENSA_UNDEFINED;
    }

  if (intisa->num_states != 0)
    {
      entry.key = name;
      result = bsearch (&entry, intisa->state_lookup_table, intisa->num_states,
   sizeof (xtensa_lookup_entry), xtensa_isa_name_compare);
    }

  if (!result)
    {
      xtisa_errno = xtensa_isa_bad_state;
      sprintf (xtisa_error_msg, "state \"%s\" not recognized", name);
      return XTENSA_UNDEFINED;
    }

  return result->u.state;
}
