
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 int towupper (scalar_t__ const) ;
 scalar_t__* wstrblank ;

int wstrcmpi_n(const wchar_t *str1, const wchar_t *str2, size_t n)
{
 if (!n)
  return 0;
 if (!str1)
  str1 = wstrblank;
 if (!str2)
  str2 = wstrblank;

 do {
  wchar_t ch1 = (wchar_t)towupper(*str1);
  wchar_t ch2 = (wchar_t)towupper(*str2);

  if (ch1 < ch2)
   return -1;
  else if (ch1 > ch2)
   return 1;
 } while (*str1++ && *str2++ && --n);

 return 0;
}
