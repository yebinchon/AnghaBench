
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct image_section_map {int dummy; } ;
struct image_file_map {int dummy; } ;
struct TYPE_4__ {scalar_t__ rva; scalar_t__ size; int const* address; int compressed; } ;
typedef TYPE_1__ dwarf2_section_t ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*) ;
 int TRUE ;
 int dwarf2_init_zsection (TYPE_1__*,char const*,struct image_section_map*) ;
 scalar_t__ image_find_section (struct image_file_map*,char const*,struct image_section_map*) ;
 scalar_t__ image_get_map_rva (struct image_section_map*) ;
 scalar_t__ image_get_map_size (struct image_section_map*) ;
 scalar_t__ image_map_section (struct image_section_map*) ;

__attribute__((used)) static inline BOOL dwarf2_init_section(dwarf2_section_t* section, struct image_file_map* fmap,
                                       const char* sectname, const char* zsectname,
                                       struct image_section_map* ism)
{
    struct image_section_map local_ism;

    if (!ism) ism = &local_ism;

    section->compressed = FALSE;
    if (image_find_section(fmap, sectname, ism))
    {
        section->address = (const BYTE*)image_map_section(ism);
        section->size = image_get_map_size(ism);
        section->rva = image_get_map_rva(ism);
        return TRUE;
    }

    section->address = ((void*)0);
    section->size = 0;
    section->rva = 0;

    if (zsectname && image_find_section(fmap, zsectname, ism))
    {



        FIXME("dbghelp not built with zlib, but compressed section found\n" );

    }

    return FALSE;
}
