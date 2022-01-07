
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_redist_region {scalar_t__ count; scalar_t__ free_index; } ;



__attribute__((used)) static inline bool
vgic_v3_redist_region_full(struct vgic_redist_region *region)
{
 if (!region->count)
  return 0;

 return (region->free_index >= region->count);
}
