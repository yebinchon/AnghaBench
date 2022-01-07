
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {size_t len; char const* array; } ;


 char* astrblank ;
 scalar_t__ strref_is_empty (struct strref const*) ;
 scalar_t__ toupper (char const) ;

int strref_cmpi(const struct strref *str1, const char *str2)
{
 size_t i = 0;

 if (strref_is_empty(str1))
  return (!str2 || !*str2) ? 0 : -1;
 if (!str2)
  str2 = astrblank;

 do {
  char ch1, ch2;

  ch1 = (i < str1->len) ? (char)toupper(str1->array[i]) : 0;
  ch2 = (char)toupper(*str2);

  if (ch1 < ch2)
   return -1;
  else if (ch1 > ch2)
   return 1;
 } while (i++ < str1->len && *str2++);

 return 0;
}
