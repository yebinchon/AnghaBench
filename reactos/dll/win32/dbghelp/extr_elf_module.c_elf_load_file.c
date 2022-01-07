
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct process {int dummy; } ;
struct TYPE_5__ {int elf_start; } ;
struct TYPE_6__ {TYPE_1__ elf; } ;
struct image_file_map {TYPE_2__ u; } ;
struct TYPE_8__ {int const* filename; } ;
struct TYPE_7__ {TYPE_4__ file; } ;
struct elf_map_file_data {TYPE_3__ u; int kind; } ;
struct elf_info {int dummy; } ;
typedef int WCHAR ;
typedef int BOOL ;


 int ERR (char*,int ) ;
 int FALSE ;
 int TRACE (char*,int ,unsigned long) ;
 int debugstr_w (int const*) ;
 int elf_load_file_from_fmap (struct process*,int const*,struct image_file_map*,unsigned long,unsigned long,struct elf_info*) ;
 int elf_map_file (struct elf_map_file_data*,struct image_file_map*) ;
 int elf_unmap_file (struct image_file_map*) ;
 int from_file ;

__attribute__((used)) static BOOL elf_load_file(struct process* pcs, const WCHAR* filename,
                          unsigned long load_offset, unsigned long dyn_addr,
                          struct elf_info* elf_info)
{
    BOOL ret = FALSE;
    struct image_file_map fmap;
    struct elf_map_file_data emfd;

    TRACE("Processing elf file '%s' at %08lx\n", debugstr_w(filename), load_offset);

    emfd.kind = from_file;
    emfd.u.file.filename = filename;
    if (!elf_map_file(&emfd, &fmap)) return ret;





    if (!fmap.u.elf.elf_start && !load_offset)
        ERR("Relocatable ELF %s, but no load address. Loading at 0x0000000\n",
            debugstr_w(filename));

    ret = elf_load_file_from_fmap(pcs, filename, &fmap, load_offset, dyn_addr, elf_info);

    elf_unmap_file(&fmap);

    return ret;
}
