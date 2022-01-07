
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
grub_strrchr (const char *s, int c)
{
  char *p = ((void*)0);

  do
    {
      if (*s == c)
 p = (char *) s;
    }
  while (*s++);

  return p;
}
