
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;


 int pg_mblen (char*) ;
 int t_iseq (char*,char) ;

__attribute__((used)) static char *
get_modifiers(char *buf, int16 *weight, bool *prefix)
{
 *weight = 0;
 *prefix = 0;

 if (!t_iseq(buf, ':'))
  return buf;

 buf++;
 while (*buf && pg_mblen(buf) == 1)
 {
  switch (*buf)
  {
   case 'a':
   case 'A':
    *weight |= 1 << 3;
    break;
   case 'b':
   case 'B':
    *weight |= 1 << 2;
    break;
   case 'c':
   case 'C':
    *weight |= 1 << 1;
    break;
   case 'd':
   case 'D':
    *weight |= 1;
    break;
   case '*':
    *prefix = 1;
    break;
   default:
    return buf;
  }
  buf++;
 }

 return buf;
}
