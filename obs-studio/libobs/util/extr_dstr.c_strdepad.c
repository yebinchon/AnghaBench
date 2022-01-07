
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_padding (char) ;
 int memmove (char*,char*,size_t) ;
 size_t strlen (char*) ;

char *strdepad(char *str)
{
 char *temp;
 size_t len;

 if (!str)
  return str;
 if (!*str)
  return str;

 temp = str;


 while (is_padding(*temp))
  ++temp;

 len = strlen(str);
 if (temp != str)
  memmove(str, temp, len + 1);

 if (len) {
  temp = str + (len - 1);
  while (is_padding(*temp))
   *(temp--) = 0;
 }

 return str;
}
