
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,int,int) ;

__attribute__((used)) static char *
fill_str(char *str, int c, int max)
{
 memset(str, c, max);
 *(str + max) = '\0';
 return str;
}
