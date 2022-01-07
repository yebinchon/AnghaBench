
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRUB_ERR_OUT_OF_RANGE ;
 int grub_error (int ,char*) ;
 unsigned long long grub_strtoull (char const*,char**,int) ;

unsigned long
grub_strtoul (const char *str, char **end, int base)
{
  unsigned long long num;

  num = grub_strtoull (str, end, base);
  if (num > ~0UL)
    {
      grub_error (GRUB_ERR_OUT_OF_RANGE, "overflow is detected");
      return ~0UL;
    }

  return (unsigned long) num;
}
