
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int * target_copy; int * alternate; int shstrtab; } ;
struct TYPE_4__ {TYPE_1__ elf; } ;
struct image_file_map {TYPE_2__ u; } ;


 int IMAGE_NO_MAP ;

__attribute__((used)) static inline void elf_reset_file_map(struct image_file_map* fmap)
{
    fmap->u.elf.fd = -1;
    fmap->u.elf.shstrtab = IMAGE_NO_MAP;
    fmap->u.elf.alternate = ((void*)0);
    fmap->u.elf.target_copy = ((void*)0);
}
