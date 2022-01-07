
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cris_disasm_data {int distype; } ;
typedef scalar_t__ bfd_boolean ;


 int REGISTER_PREFIX_CHAR ;
 int cris_dis_v32 ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
format_reg (struct cris_disasm_data *disdata,
     int regno,
     char *outbuffer_start,
     bfd_boolean with_reg_prefix)
{
  char *outbuffer = outbuffer_start;

  if (with_reg_prefix) {
   *outbuffer++ = REGISTER_PREFIX_CHAR;
  }

  switch (regno)
    {
    case 15:

      if (disdata->distype == cris_dis_v32) {
       strcpy (outbuffer, "acr");
      } else {
       strcpy (outbuffer, "pc");
      }
      break;

    case 14:
      strcpy (outbuffer, "sp");
      break;

    default:
      sprintf (outbuffer, "r%d", regno);
      break;
    }

  return outbuffer_start + strlen (outbuffer_start);
}
