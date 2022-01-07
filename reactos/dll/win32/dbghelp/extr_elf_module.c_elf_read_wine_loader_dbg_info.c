
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct process {int dbg_hdr_addr; } ;
struct elf_info {int flags; int dbg_hdr_addr; TYPE_4__* module; } ;
struct TYPE_8__ {TYPE_3__** format_info; } ;
struct TYPE_6__ {TYPE_1__* elf_info; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_5__ {int elf_loader; } ;
typedef int BOOL ;


 size_t DFI_ELF ;
 int ELF_INFO_DEBUG_HEADER ;
 int ELF_INFO_MODULE ;
 int FALSE ;
 int S_WineLoaderW ;
 int elf_search_loader (struct process*,struct elf_info*) ;
 int module_set_module (TYPE_4__*,int ) ;

BOOL elf_read_wine_loader_dbg_info(struct process* pcs)
{
    struct elf_info elf_info;

    elf_info.flags = ELF_INFO_DEBUG_HEADER | ELF_INFO_MODULE;
    if (!elf_search_loader(pcs, &elf_info)) return FALSE;
    elf_info.module->format_info[DFI_ELF]->u.elf_info->elf_loader = 1;
    module_set_module(elf_info.module, S_WineLoaderW);
    return (pcs->dbg_hdr_addr = elf_info.dbg_hdr_addr) != 0;
}
