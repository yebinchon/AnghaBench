
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16 ;


 scalar_t__ TSL_PREFIX ;
 int pg_mblen (char*) ;
 scalar_t__ t_iseq (char*,char) ;
 scalar_t__ t_isspace (char*) ;

__attribute__((used)) static char *
findwrd(char *in, char **end, uint16 *flags)
{
 char *start;
 char *lastchar;


 while (*in && t_isspace(in))
  in += pg_mblen(in);


 if (*in == '\0')
 {
  *end = ((void*)0);
  return ((void*)0);
 }

 lastchar = start = in;


 while (*in && !t_isspace(in))
 {
  lastchar = in;
  in += pg_mblen(in);
 }

 if (in - lastchar == 1 && t_iseq(lastchar, '*') && flags)
 {
  *flags = TSL_PREFIX;
  *end = lastchar;
 }
 else
 {
  if (flags)
   *flags = 0;
  *end = in;
 }

 return start;
}
