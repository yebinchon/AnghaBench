
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ elf; } ;
struct image_file_map {TYPE_2__ u; } ;
struct TYPE_7__ {scalar_t__ load_addr; int handle; } ;
struct TYPE_8__ {TYPE_3__ process; } ;
struct elf_map_file_data {int kind; TYPE_4__ u; } ;
typedef scalar_t__ off_t ;
typedef size_t SIZE_T ;
typedef int BOOL ;


 int FALSE ;
 int ReadProcessMemory (int ,void*,void*,size_t,size_t*) ;
 int assert (int ) ;


 size_t pread (int ,void*,size_t,scalar_t__) ;

__attribute__((used)) static BOOL elf_map_file_read(struct image_file_map* fmap, struct elf_map_file_data* emfd,
                              void* buf, size_t len, off_t off)
{
    SIZE_T dw;

    switch (emfd->kind)
    {
    case 129:
        return pread(fmap->u.elf.fd, buf, len, off) == len;
    case 128:
        return ReadProcessMemory(emfd->u.process.handle,
                                 (void*)((unsigned long)emfd->u.process.load_addr + (unsigned long)off),
                                 buf, len, &dw) && dw == len;
    default:
        assert(0);
        return FALSE;
    }
}
