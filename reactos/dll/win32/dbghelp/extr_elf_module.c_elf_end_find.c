
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct image_section_map {int sidx; struct image_file_map* fmap; } ;
struct TYPE_4__ {int e_shstrndx; } ;
struct TYPE_5__ {struct image_file_map* alternate; int shstrtab; TYPE_1__ elfhdr; } ;
struct TYPE_6__ {TYPE_2__ elf; } ;
struct image_file_map {TYPE_3__ u; } ;


 int IMAGE_NO_MAP ;
 int elf_unmap_section (struct image_section_map*) ;

__attribute__((used)) static void elf_end_find(struct image_file_map* fmap)
{
    struct image_section_map ism;

    while (fmap)
    {
        ism.fmap = fmap;
        ism.sidx = fmap->u.elf.elfhdr.e_shstrndx;
        elf_unmap_section(&ism);
        fmap->u.elf.shstrtab = IMAGE_NO_MAP;
        fmap = fmap->u.elf.alternate;
    }
}
