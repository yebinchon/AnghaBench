
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 size_t wcslen (int const*) ;
 scalar_t__ wstrcmpi_n (int const*,int const*,size_t) ;

wchar_t *wstrstri(const wchar_t *str, const wchar_t *find)
{
 size_t len;

 if (!str || !find)
  return ((void*)0);

 len = wcslen(find);

 do {
  if (wstrcmpi_n(str, find, len) == 0)
   return (wchar_t *)str;
 } while (*str++);

 return ((void*)0);
}
