
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_size_t ;



int
grub_memcmp (const void *s1, const void *s2, grub_size_t n)
{
  const char *t1 = s1;
  const char *t2 = s2;

  while (n--)
    {
      if (*t1 != *t2)
 return (int) *t1 - (int) *t2;

      t1++;
      t2++;
    }

  return 0;
}
