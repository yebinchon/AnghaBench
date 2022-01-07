
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ islower (unsigned char) ;
 char toupper (unsigned char) ;

void
rupshift(char *str)
{
 for (; *str != '\0'; str++)
  if (islower((unsigned char) *str))
   *str = toupper((unsigned char) *str);
 return;
}
