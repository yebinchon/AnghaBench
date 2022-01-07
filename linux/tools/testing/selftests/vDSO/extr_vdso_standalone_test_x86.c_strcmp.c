
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int strcmp(const char *a, const char *b)
{

 while (*a || *b) {
  if (*a != *b)
   return 1;
  if (*a == 0 || *b == 0)
   return 1;
  a++;
  b++;
 }

 return 0;
}
