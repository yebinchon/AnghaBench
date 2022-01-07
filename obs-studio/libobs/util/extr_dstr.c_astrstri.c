
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ astrcmpi_n (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

char *astrstri(const char *str, const char *find)
{
 size_t len;

 if (!str || !find)
  return ((void*)0);

 len = strlen(find);

 do {
  if (astrcmpi_n(str, find, len) == 0)
   return (char *)str;
 } while (*str++);

 return ((void*)0);
}
