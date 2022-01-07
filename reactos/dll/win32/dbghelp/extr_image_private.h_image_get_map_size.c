
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image_section_map {TYPE_1__* fmap; } ;
struct TYPE_2__ {int modtype; } ;





 int assert (int ) ;
 int elf_get_map_size (struct image_section_map const*) ;
 int macho_get_map_size (struct image_section_map const*) ;
 int pe_get_map_size (struct image_section_map const*) ;

__attribute__((used)) static inline unsigned image_get_map_size(const struct image_section_map* ism)
{
    if (!ism->fmap) return 0;
    switch (ism->fmap->modtype)
    {

    case 130: return elf_get_map_size(ism);
    case 129: return macho_get_map_size(ism);

    case 128: return pe_get_map_size(ism);
    default: assert(0); return 0;
    }
}
