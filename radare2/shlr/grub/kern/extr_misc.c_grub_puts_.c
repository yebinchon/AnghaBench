
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char const*) ;
 int grub_puts (int ) ;

int
grub_puts_ (const char *s)
{
  return grub_puts (_(s));
}
