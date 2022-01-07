
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_uint16_t ;



__attribute__((used)) static void
addstr (grub_uint16_t *name, int ulen, grub_uint16_t *filename, int *strpos)
{
  while (ulen--)
    filename[(*strpos)++] = *(name++);
}
