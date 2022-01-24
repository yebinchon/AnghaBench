#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct process {scalar_t__ dbg_hdr_addr; } ;
struct module {int dummy; } ;
struct TYPE_2__ {struct module* module; int /*<<< orphan*/  flags; } ;
struct elf_load {TYPE_1__ elf_info; void* ret; int /*<<< orphan*/  const* name; struct process* pcs; } ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_INFO_MODULE ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct process*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct process*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct elf_load*) ; 
 int /*<<< orphan*/  elf_load_cb ; 
 void* FUNC4 (struct process*,int /*<<< orphan*/  const*,unsigned long,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/  const*,char) ; 

struct module*  FUNC6(struct process* pcs, const WCHAR* name, unsigned long addr)
{
    struct elf_load     el;

    FUNC0("(%p %s %08lx)\n", pcs, FUNC2(name), addr);

    el.elf_info.flags = ELF_INFO_MODULE;
    el.ret = FALSE;

    if (pcs->dbg_hdr_addr) /* we're debugging a life target */
    {
        el.pcs = pcs;
        /* do only the lookup from the filename, not the path (as we lookup module
         * name in the process' loaded module list)
         */
        el.name = FUNC5(name, '/');
        if (!el.name++) el.name = name;
        el.ret = FALSE;

        if (!FUNC3(pcs, NULL, elf_load_cb, &el))
            return NULL;
    }
    else if (addr)
    {
        el.name = name;
        el.ret = FUNC4(pcs, el.name, addr, 0, &el.elf_info);
    }
    if (!el.ret) return NULL;
    FUNC1(el.elf_info.module);
    return el.elf_info.module;
}