
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct image_section_map {size_t sidx; TYPE_2__* fmap; } ;
struct TYPE_8__ {size_t e_shnum; } ;
struct elf_file_map {TYPE_5__* sect; int target_copy; TYPE_3__ elfhdr; } ;
struct TYPE_9__ {size_t sh_offset; size_t sh_size; } ;
struct TYPE_10__ {scalar_t__ mapped; TYPE_4__ shdr; } ;
struct TYPE_6__ {struct elf_file_map elf; } ;
struct TYPE_7__ {TYPE_1__ u; } ;


 scalar_t__ IMAGE_NO_MAP ;
 int WARN (char*) ;
 int _SC_PAGESIZE ;
 scalar_t__ munmap (char*,size_t) ;
 size_t sysconf (int ) ;

void elf_unmap_section(struct image_section_map* ism)
{
    struct elf_file_map* fmap = &ism->fmap->u.elf;

    if (ism->sidx >= 0 && ism->sidx < fmap->elfhdr.e_shnum && !fmap->target_copy &&
        fmap->sect[ism->sidx].mapped != IMAGE_NO_MAP)
    {
        size_t pgsz = sysconf( _SC_PAGESIZE );
        size_t ofst = fmap->sect[ism->sidx].shdr.sh_offset & ~(pgsz - 1);
        size_t size = ((fmap->sect[ism->sidx].shdr.sh_offset +
                 fmap->sect[ism->sidx].shdr.sh_size + pgsz - 1) & ~(pgsz - 1)) - ofst;
        if (munmap((char*)fmap->sect[ism->sidx].mapped, size) < 0)
            WARN("Couldn't unmap the section\n");
        fmap->sect[ism->sidx].mapped = IMAGE_NO_MAP;
    }
}
