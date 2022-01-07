
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cris_disasm_data {int dummy; } ;


 scalar_t__ TRACE_CASE ;
 unsigned long last_immediate ;
 int sprintf (char*,char*,unsigned long) ;
 int strlen (char*) ;

__attribute__((used)) static char *
format_hex (unsigned long number,
     char *outbuffer,
     struct cris_disasm_data *disdata)
{

  number &= 0xffffffff;

  sprintf (outbuffer, "0x%lx", number);


  if (TRACE_CASE) {
   last_immediate = number;
  }

  return outbuffer + strlen (outbuffer);
}
