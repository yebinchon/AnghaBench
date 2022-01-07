
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* astrblank ;

int astrcmp_n(const char *str1, const char *str2, size_t n)
{
 if (!n)
  return 0;
 if (!str1)
  str1 = astrblank;
 if (!str2)
  str2 = astrblank;

 do {
  char ch1 = *str1;
  char ch2 = *str2;

  if (ch1 < ch2)
   return -1;
  else if (ch1 > ch2)
   return 1;
 } while (*str1++ && *str2++ && --n);

 return 0;
}
