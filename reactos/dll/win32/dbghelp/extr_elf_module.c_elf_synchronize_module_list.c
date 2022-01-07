
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct process {struct module* lmodules; } ;
struct module {scalar_t__ type; struct module* next; TYPE_3__** format_info; int is_virtual; } ;
struct elf_module_info {int elf_loader; scalar_t__ elf_mark; } ;
struct TYPE_4__ {int flags; } ;
struct elf_load {int * name; int ret; TYPE_1__ elf_info; struct process* pcs; } ;
struct TYPE_5__ {struct elf_module_info* elf_info; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
typedef int BOOL ;


 size_t DFI_ELF ;
 scalar_t__ DMT_ELF ;
 int ELF_INFO_MODULE ;
 int FALSE ;
 int TRUE ;
 int elf_enum_modules_internal (struct process*,int *,int ,struct elf_load*) ;
 int elf_load_cb ;
 int module_remove (struct process*,struct module*) ;

BOOL elf_synchronize_module_list(struct process* pcs)
{
    struct module* module;
    struct elf_load el;

    for (module = pcs->lmodules; module; module = module->next)
    {
        if (module->type == DMT_ELF && !module->is_virtual)
            module->format_info[DFI_ELF]->u.elf_info->elf_mark = 0;
    }

    el.pcs = pcs;
    el.elf_info.flags = ELF_INFO_MODULE;
    el.ret = FALSE;
    el.name = ((void*)0);

    if (!elf_enum_modules_internal(pcs, ((void*)0), elf_load_cb, &el))
        return FALSE;

    module = pcs->lmodules;
    while (module)
    {
        if (module->type == DMT_ELF && !module->is_virtual)
        {
            struct elf_module_info* elf_info = module->format_info[DFI_ELF]->u.elf_info;

            if (!elf_info->elf_mark && !elf_info->elf_loader)
            {
                module_remove(pcs, module);

                module = pcs->lmodules;
                continue;
            }
        }
        module = module->next;
    }
    return TRUE;
}
