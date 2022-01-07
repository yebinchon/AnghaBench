
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image_section_map {TYPE_1__* fmap; } ;
struct TYPE_2__ {int modtype; } ;





 int assert (int ) ;
 char const* elf_map_section (struct image_section_map*) ;
 char const* macho_map_section (struct image_section_map*) ;
 char const* pe_map_section (struct image_section_map*) ;

__attribute__((used)) static inline const char* image_map_section(struct image_section_map* ism)
{
    if (!ism->fmap) return ((void*)0);
    switch (ism->fmap->modtype)
    {

    case 130: return elf_map_section(ism);
    case 129: return macho_map_section(ism);

    case 128: return pe_map_section(ism);
    default: assert(0); return ((void*)0);
    }
}
