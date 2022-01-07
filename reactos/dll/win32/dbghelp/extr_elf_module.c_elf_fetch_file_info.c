
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; int elf_size; int elf_start; } ;
struct TYPE_6__ {TYPE_1__ elf; } ;
struct image_file_map {TYPE_2__ u; } ;
struct TYPE_7__ {int const* filename; } ;
struct TYPE_8__ {TYPE_3__ file; } ;
struct elf_map_file_data {TYPE_4__ u; int kind; } ;
typedef int WCHAR ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int calc_crc32 (int ) ;
 int elf_map_file (struct elf_map_file_data*,struct image_file_map*) ;
 int elf_unmap_file (struct image_file_map*) ;
 int from_file ;

BOOL elf_fetch_file_info(const WCHAR* name, DWORD_PTR* base,
                         DWORD* size, DWORD* checksum)
{
    struct image_file_map fmap;

    struct elf_map_file_data emfd;

    emfd.kind = from_file;
    emfd.u.file.filename = name;
    if (!elf_map_file(&emfd, &fmap)) return FALSE;
    if (base) *base = fmap.u.elf.elf_start;
    *size = fmap.u.elf.elf_size;
    *checksum = calc_crc32(fmap.u.elf.fd);
    elf_unmap_file(&fmap);
    return TRUE;
}
