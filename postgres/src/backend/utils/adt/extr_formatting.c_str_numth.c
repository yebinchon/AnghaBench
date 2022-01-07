
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_th (char*,int) ;
 int strcat (char*,int ) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
str_numth(char *dest, char *num, int type)
{
 if (dest != num)
  strcpy(dest, num);
 strcat(dest, get_th(num, type));
 return dest;
}
