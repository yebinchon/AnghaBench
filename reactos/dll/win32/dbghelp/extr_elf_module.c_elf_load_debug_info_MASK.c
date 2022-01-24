#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pool {int dummy; } ;
struct TYPE_6__ {TYPE_2__* elf_info; } ;
struct module_format {TYPE_3__ u; } ;
struct TYPE_4__ {int /*<<< orphan*/  LoadedImageName; } ;
struct module {scalar_t__ type; TYPE_1__ module; struct module_format** format_info; } ;
struct hash_table {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  file_map; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t DFI_ELF ; 
 scalar_t__ DMT_ELF ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct module*,int /*<<< orphan*/ *,struct pool*,struct hash_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*,struct hash_table*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pool*) ; 
 int /*<<< orphan*/  FUNC5 (struct pool*,int) ; 

BOOL FUNC6(struct module* module)
{
    BOOL                        ret = TRUE;
    struct pool                 pool;
    struct hash_table           ht_symtab;
    struct module_format*       modfmt;

    if (module->type != DMT_ELF || !(modfmt = module->format_info[DFI_ELF]) || !modfmt->u.elf_info)
    {
	FUNC0("Bad elf module '%s'\n", FUNC1(module->module.LoadedImageName));
	return FALSE;
    }

    FUNC5(&pool, 65536);
    FUNC3(&pool, &ht_symtab, 256);

    ret = FUNC2(module, &modfmt->u.elf_info->file_map, &pool, &ht_symtab);

    FUNC4(&pool);
    return ret;
}