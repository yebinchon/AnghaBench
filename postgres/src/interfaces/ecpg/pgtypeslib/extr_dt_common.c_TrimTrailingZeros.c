
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

void
TrimTrailingZeros(char *str)
{
 int len = strlen(str);


 while (*(str + len - 1) == '0' && *(str + len - 3) != '.')
 {
  len--;
  *(str + len) = '\0';
 }
}
