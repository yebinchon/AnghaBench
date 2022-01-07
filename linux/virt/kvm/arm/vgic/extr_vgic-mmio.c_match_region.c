
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_register_region {unsigned int const reg_offset; unsigned int const len; } ;



__attribute__((used)) static int match_region(const void *key, const void *elt)
{
 const unsigned int offset = (unsigned long)key;
 const struct vgic_register_region *region = elt;

 if (offset < region->reg_offset)
  return -1;

 if (offset >= region->reg_offset + region->len)
  return 1;

 return 0;
}
