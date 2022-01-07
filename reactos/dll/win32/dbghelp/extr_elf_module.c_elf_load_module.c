
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process {scalar_t__ dbg_hdr_addr; } ;
struct module {int dummy; } ;
struct TYPE_2__ {struct module* module; int flags; } ;
struct elf_load {TYPE_1__ elf_info; void* ret; int const* name; struct process* pcs; } ;
typedef int WCHAR ;


 int ELF_INFO_MODULE ;
 void* FALSE ;
 int TRACE (char*,struct process*,int ,unsigned long) ;
 int assert (struct module*) ;
 int debugstr_w (int const*) ;
 int elf_enum_modules_internal (struct process*,int *,int ,struct elf_load*) ;
 int elf_load_cb ;
 void* elf_search_and_load_file (struct process*,int const*,unsigned long,int ,TYPE_1__*) ;
 int const* strrchrW (int const*,char) ;

struct module* elf_load_module(struct process* pcs, const WCHAR* name, unsigned long addr)
{
    struct elf_load el;

    TRACE("(%p %s %08lx)\n", pcs, debugstr_w(name), addr);

    el.elf_info.flags = ELF_INFO_MODULE;
    el.ret = FALSE;

    if (pcs->dbg_hdr_addr)
    {
        el.pcs = pcs;



        el.name = strrchrW(name, '/');
        if (!el.name++) el.name = name;
        el.ret = FALSE;

        if (!elf_enum_modules_internal(pcs, ((void*)0), elf_load_cb, &el))
            return ((void*)0);
    }
    else if (addr)
    {
        el.name = name;
        el.ret = elf_search_and_load_file(pcs, el.name, addr, 0, &el.elf_info);
    }
    if (!el.ret) return ((void*)0);
    assert(el.elf_info.module);
    return el.elf_info.module;
}
