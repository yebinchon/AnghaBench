
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int forkname_chars (char const*,int *) ;
 scalar_t__ isdigit (unsigned char) ;

bool
looks_like_temp_rel_name(const char *name)
{
 int pos;
 int savepos;


 if (name[0] != 't')
  return 0;


 for (pos = 1; isdigit((unsigned char) name[pos]); ++pos)
  ;
 if (pos == 1 || name[pos] != '_')
  return 0;


 for (savepos = ++pos; isdigit((unsigned char) name[pos]); ++pos)
  ;
 if (savepos == pos)
  return 0;


 if (name[pos] == '_')
 {
  int forkchar = forkname_chars(&name[pos + 1], ((void*)0));

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
