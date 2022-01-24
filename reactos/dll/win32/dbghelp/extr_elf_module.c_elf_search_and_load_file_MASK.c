#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct process {int dummy; } ;
struct TYPE_8__ {scalar_t__ SymType; } ;
struct module {TYPE_4__ module; TYPE_3__** format_info; } ;
struct elf_info {struct module* module; } ;
typedef  char WCHAR ;
struct TYPE_6__ {TYPE_1__* elf_info; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_5__ {int elf_mark; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BINDIR ; 
 size_t DFI_ELF ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (struct process*,char const*,unsigned long,unsigned long,struct elf_info*) ; 
 scalar_t__ FUNC1 (struct process*,char const*,unsigned long,unsigned long,struct elf_info*) ; 
 scalar_t__ FUNC2 (struct process*,char const*,unsigned long,unsigned long,int /*<<< orphan*/ ,struct elf_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct module* FUNC4 (struct process*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 

__attribute__((used)) static BOOL FUNC7(struct process* pcs, const WCHAR* filename,
                                     unsigned long load_offset, unsigned long dyn_addr,
                                     struct elf_info* elf_info)
{
    BOOL                ret = FALSE;
    struct module*      module;
    static const WCHAR  S_libstdcPPW[] = {'l','i','b','s','t','d','c','+','+','\0'};

    if (filename == NULL || *filename == '\0') return FALSE;
    if ((module = FUNC4(pcs, filename)))
    {
        elf_info->module = module;
        elf_info->module->format_info[DFI_ELF]->u.elf_info->elf_mark = 1;
        return module->module.SymType;
    }

    if (FUNC6(filename, S_libstdcPPW)) return FALSE; /* We know we can't do it */
    ret = FUNC0(pcs, filename, load_offset, dyn_addr, elf_info);
    /* if relative pathname, try some absolute base dirs */
    if (!ret && !FUNC5(filename, '/'))
    {
        ret = FUNC2(pcs, filename, load_offset, dyn_addr,
                                      FUNC3("PATH"), elf_info);
        if (!ret) ret = FUNC2(pcs, filename, load_offset, dyn_addr,
                                                FUNC3("LD_LIBRARY_PATH"), elf_info);
        if (!ret) ret = FUNC2(pcs, filename, load_offset, dyn_addr,
                                                BINDIR, elf_info);
        if (!ret) ret = FUNC1(pcs, filename,
                                                    load_offset, dyn_addr, elf_info);
    }

    return ret;
}