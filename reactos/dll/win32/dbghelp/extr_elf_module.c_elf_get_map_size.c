
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct image_section_map {size_t sidx; TYPE_6__* fmap; } ;
struct TYPE_7__ {size_t e_shnum; } ;
struct TYPE_10__ {TYPE_3__* sect; TYPE_1__ elfhdr; } ;
struct TYPE_11__ {TYPE_4__ elf; } ;
struct TYPE_12__ {TYPE_5__ u; } ;
struct TYPE_8__ {int sh_size; } ;
struct TYPE_9__ {TYPE_2__ shdr; } ;



unsigned elf_get_map_size(const struct image_section_map* ism)
{
    if (ism->sidx < 0 || ism->sidx >= ism->fmap->u.elf.elfhdr.e_shnum)
        return 0;
    return ism->fmap->u.elf.sect[ism->sidx].shdr.sh_size;
}
