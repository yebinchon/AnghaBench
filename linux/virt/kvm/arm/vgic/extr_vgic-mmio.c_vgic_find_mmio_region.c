
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_register_region {int dummy; } ;
typedef int regions ;


 struct vgic_register_region const* bsearch (void*,struct vgic_register_region const*,int,int,int ) ;
 int match_region ;

const struct vgic_register_region *
vgic_find_mmio_region(const struct vgic_register_region *regions,
        int nr_regions, unsigned int offset)
{
 return bsearch((void *)(uintptr_t)offset, regions, nr_regions,
         sizeof(regions[0]), match_region);
}
