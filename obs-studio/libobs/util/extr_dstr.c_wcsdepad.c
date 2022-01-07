
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int memmove (char*,char*,size_t) ;
 size_t wcslen (char*) ;

wchar_t *wcsdepad(wchar_t *str)
{
 wchar_t *temp;
 size_t len;

 if (!str)
  return str;
 if (!*str)
  return str;

 temp = str;


 while (*temp == ' ' || *temp == '\t')
  ++temp;

 len = wcslen(str);
 if (temp != str)
  memmove(str, temp, (len + 1) * sizeof(wchar_t));

 if (len) {
  temp = str + (len - 1);
  while (*temp == ' ' || *temp == '\t')
   *(temp--) = 0;
 }

 return str;
}
