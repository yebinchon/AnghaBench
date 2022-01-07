
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_sun_pc_block {int dummy; } ;
typedef int grub_uint16_t ;



__attribute__((used)) static int
grub_sun_is_valid (struct grub_sun_pc_block *label)
{
  grub_uint16_t *pos;
  grub_uint16_t sum = 0;

  for (pos = (grub_uint16_t *) label;
       pos < (grub_uint16_t *) (label + 1);
       pos++)
    sum ^= *pos;

  return ! sum;
}
