
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct image_section_map {scalar_t__ sidx; struct image_file_map* fmap; } ;
struct TYPE_4__ {scalar_t__ e_shnum; } ;
struct TYPE_6__ {int fd; struct image_file_map* alternate; int target_copy; int sect; TYPE_1__ elfhdr; } ;
struct TYPE_5__ {TYPE_3__ elf; } ;
struct image_file_map {TYPE_2__ u; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int close (int) ;
 int elf_unmap_section (struct image_section_map*) ;

__attribute__((used)) static void elf_unmap_file(struct image_file_map* fmap)
{
    while (fmap)
    {
        if (fmap->u.elf.fd != -1)
        {
            struct image_section_map ism;
            ism.fmap = fmap;
            for (ism.sidx = 0; ism.sidx < fmap->u.elf.elfhdr.e_shnum; ism.sidx++)
            {
                elf_unmap_section(&ism);
            }
            HeapFree(GetProcessHeap(), 0, fmap->u.elf.sect);
            close(fmap->u.elf.fd);
        }
        HeapFree(GetProcessHeap(), 0, fmap->u.elf.target_copy);
        fmap = fmap->u.elf.alternate;
    }
}
