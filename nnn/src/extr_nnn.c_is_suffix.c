
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 size_t strlen (char const*) ;
 scalar_t__ xstrcmp (char const*,char const*) ;

__attribute__((used)) static bool is_suffix(const char *str, const char *suffix)
{
 if (!str || !suffix)
  return FALSE;

 size_t lenstr = strlen(str);
 size_t lensuffix = strlen(suffix);

 if (lensuffix > lenstr)
  return FALSE;

 return (xstrcmp(str + (lenstr - lensuffix), suffix) == 0);
}
