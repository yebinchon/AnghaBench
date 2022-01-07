
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_mblen (char*) ;
 scalar_t__ t_iseq (char*,int) ;

__attribute__((used)) static char *
findchar2(char *str, int c1, int c2)
{
 while (*str)
 {
  if (t_iseq(str, c1) || t_iseq(str, c2))
   return str;
  str += pg_mblen(str);
 }

 return ((void*)0);
}
