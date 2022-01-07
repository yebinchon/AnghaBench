
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xtensa_regfile ;
struct TYPE_4__ {int num_regfiles; TYPE_1__* regfiles; } ;
typedef TYPE_2__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
struct TYPE_3__ {int parent; int shortname; } ;


 int XTENSA_UNDEFINED ;
 int filename_cmp (int ,char const*) ;
 int sprintf (int ,char*,char const*) ;
 int strcpy (int ,char*) ;
 int xtensa_isa_bad_regfile ;
 int xtisa_errno ;
 int xtisa_error_msg ;

xtensa_regfile
xtensa_regfile_lookup_shortname (xtensa_isa isa, const char *shortname)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  int n;

  if (!shortname || !*shortname)
    {
      xtisa_errno = xtensa_isa_bad_regfile;
      strcpy (xtisa_error_msg, "invalid regfile shortname");
      return XTENSA_UNDEFINED;
    }


  for (n = 0; n < intisa->num_regfiles; n++)
    {


      if (intisa->regfiles[n].parent != n) {
       continue;
      }
      if (!filename_cmp (intisa->regfiles[n].shortname, shortname)) {
       return n;
      }
    }

  xtisa_errno = xtensa_isa_bad_regfile;
  sprintf (xtisa_error_msg, "regfile shortname \"%s\" not recognized",
    shortname);
  return XTENSA_UNDEFINED;
}
