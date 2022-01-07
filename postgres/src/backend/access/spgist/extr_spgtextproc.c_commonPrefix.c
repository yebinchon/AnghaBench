
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
commonPrefix(const char *a, const char *b, int lena, int lenb)
{
 int i = 0;

 while (i < lena && i < lenb && *a == *b)
 {
  a++;
  b++;
  i++;
 }

 return i;
}
