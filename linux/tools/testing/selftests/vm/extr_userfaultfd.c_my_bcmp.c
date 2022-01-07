
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int my_bcmp(char *str1, char *str2, size_t n)
{
 unsigned long i;
 for (i = 0; i < n; i++)
  if (str1[i] != str2[i])
   return 1;
 return 0;
}
