
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ForkNumber ;


 int MAIN_FORKNUM ;
 int OIDCHARS ;
 int forkname_chars (char const*,int *) ;
 scalar_t__ isdigit (unsigned char) ;

bool
parse_filename_for_nontemp_relation(const char *name, int *oidchars,
         ForkNumber *fork)
{
 int pos;


 for (pos = 0; isdigit((unsigned char) name[pos]); ++pos)
  ;
 if (pos == 0 || pos > OIDCHARS)
  return 0;
 *oidchars = pos;


 if (name[pos] != '_')
  *fork = MAIN_FORKNUM;
 else
 {
  int forkchar;

  forkchar = forkname_chars(&name[pos + 1], fork);
  if (forkchar <= 0)
   return 0;
  pos += forkchar + 1;
 }


 if (name[pos] == '.')
 {
  int segchar;

  for (segchar = 1; isdigit((unsigned char) name[pos + segchar]); ++segchar)
   ;
  if (segchar <= 1)
   return 0;
  pos += segchar;
 }


 if (name[pos] != '\0')
  return 0;
 return 1;
}
