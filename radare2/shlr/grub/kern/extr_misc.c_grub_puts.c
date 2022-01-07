
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grub_putchar (char const) ;

int
grub_puts (const char *s)
{
  while (*s)
    {
      grub_putchar (*s);
      s++;
    }
  grub_putchar ('\n');

  return 1;
}
