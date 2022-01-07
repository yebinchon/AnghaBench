
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_section_map {int dummy; } ;
struct image_file_map {int modtype; } ;
typedef int BOOL ;





 int FALSE ;
 int SHT_NULL ;
 int assert (int ) ;
 int elf_find_section (struct image_file_map*,char const*,int ,struct image_section_map*) ;
 int macho_find_section (struct image_file_map*,int *,char const*,struct image_section_map*) ;
 int pe_find_section (struct image_file_map*,char const*,struct image_section_map*) ;

__attribute__((used)) static inline BOOL image_find_section(struct image_file_map* fmap, const char* name,
                                      struct image_section_map* ism)
{
    switch (fmap->modtype)
    {

    case 130: return elf_find_section(fmap, name, SHT_NULL, ism);
    case 129: return macho_find_section(fmap, ((void*)0), name, ism);

    case 128: return pe_find_section(fmap, name, ism);
    default: assert(0); return FALSE;
    }
}
