
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ bfd_boolean ;
struct TYPE_2__ {char* name; unsigned int number; } ;


 int REGISTER_PREFIX_CHAR ;
 TYPE_1__* cris_support_regs ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static char *
format_sup_reg (unsigned int regno,
  char *outbuffer_start,
  bfd_boolean with_reg_prefix)
{
  char *outbuffer = outbuffer_start;
  int i;

  if (with_reg_prefix) {
   *outbuffer++ = REGISTER_PREFIX_CHAR;
  }

  for (i = 0; cris_support_regs[i].name != ((void*)0); i++) {
   if (cris_support_regs[i].number == regno) {
    sprintf (outbuffer, "%s", cris_support_regs[i].name);
    return outbuffer_start + strlen (outbuffer_start);
   }
  }



  sprintf (outbuffer, "format_sup_reg-BUG");
  return outbuffer_start + strlen (outbuffer_start);
}
