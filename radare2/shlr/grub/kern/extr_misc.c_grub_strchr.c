
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
grub_strchr (const char *s, int c)
{
  do
    {
      if (*s == c)
 return (char *) s;
    }
  while (*s++);

  return 0;
}
