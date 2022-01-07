
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int fd; } ;
struct TYPE_8__ {TYPE_3__ elf; } ;
struct image_file_map {TYPE_4__ u; } ;
struct TYPE_5__ {int const* filename; } ;
struct TYPE_6__ {TYPE_1__ file; } ;
struct elf_map_file_data {TYPE_2__ u; int kind; } ;
typedef int WCHAR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int WARN (char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ calc_crc32 (int ) ;
 int debugstr_w (int const*) ;
 int elf_map_file (struct elf_map_file_data*,struct image_file_map*) ;
 int elf_unmap_file (struct image_file_map*) ;
 int from_file ;

__attribute__((used)) static BOOL elf_check_debug_link(const WCHAR* file, struct image_file_map* fmap, DWORD crc)
{
    BOOL ret;
    struct elf_map_file_data emfd;

    emfd.kind = from_file;
    emfd.u.file.filename = file;
    if (!elf_map_file(&emfd, fmap)) return FALSE;
    if (!(ret = crc == calc_crc32(fmap->u.elf.fd)))
    {
        WARN("Bad CRC for file %s (got %08x while expecting %08x)\n",
             debugstr_w(file), calc_crc32(fmap->u.elf.fd), crc);
        elf_unmap_file(fmap);
    }
    return ret;
}
