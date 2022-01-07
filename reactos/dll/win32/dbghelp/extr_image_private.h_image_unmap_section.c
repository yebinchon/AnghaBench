
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image_section_map {TYPE_1__* fmap; } ;
struct TYPE_2__ {int modtype; } ;





 int assert (int ) ;
 int elf_unmap_section (struct image_section_map*) ;
 int macho_unmap_section (struct image_section_map*) ;
 int pe_unmap_section (struct image_section_map*) ;

__attribute__((used)) static inline void image_unmap_section(struct image_section_map* ism)
{
    if (!ism->fmap) return;
    switch (ism->fmap->modtype)
    {

    case 130: elf_unmap_section(ism); break;
    case 129: macho_unmap_section(ism); break;

    case 128: pe_unmap_section(ism); break;
    default: assert(0); return;
    }
}
