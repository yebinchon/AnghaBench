
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;



void
print_tar_number(char *s, int len, uint64 val)
{
 if (val < (((uint64) 1) << ((len - 1) * 3)))
 {

  s[--len] = ' ';
  while (len)
  {
   s[--len] = (val & 7) + '0';
   val >>= 3;
  }
 }
 else
 {

  s[0] = '\200';
  while (len > 1)
  {
   s[--len] = (val & 255);
   val >>= 8;
  }
 }
}
