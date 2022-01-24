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
struct symt_ht {int dummy; } ;
struct TYPE_2__ {int NumSyms; } ;
struct module {int num_symbols; int num_sorttab; int /*<<< orphan*/  sortlist_valid; struct symt_ht** addr_sorttab; TYPE_1__ module; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct symt_ht** FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct symt_ht** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symt_ht**,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct symt_ht**,struct symt_ht**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct symt_ht**,struct symt_ht**,int) ; 
 int /*<<< orphan*/  FUNC5 (struct symt_ht**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  symt_cmp_addr ; 
 int FUNC6 (struct module*,int,struct symt_ht*) ; 

__attribute__((used)) static BOOL FUNC7(struct module* module)
{
    int delta;

    if (!(module->module.NumSyms = module->num_symbols))
        return FALSE;

    /* we know that set from 0 up to num_sorttab is already sorted
     * so sort the remaining (new) symbols, and merge the two sets
     * (unless the first set is empty)
     */
    delta = module->num_symbols - module->num_sorttab;
    FUNC5(&module->addr_sorttab[module->num_sorttab], delta, sizeof(struct symt_ht*), symt_cmp_addr);
    if (module->num_sorttab)
    {
        int     i, ins_idx = module->num_sorttab, prev_ins_idx;
        static struct symt_ht** tmp;
        static unsigned num_tmp;

        if (num_tmp < delta)
        {
            static struct symt_ht** new;
            if (tmp)
                new = FUNC2(FUNC0(), 0, tmp, delta * sizeof(struct symt_ht*));
            else
                new = FUNC1(FUNC0(), 0, delta * sizeof(struct symt_ht*));
            if (!new)
            {
                module->num_sorttab = 0;
                return FUNC7(module);
            }
            tmp = new;
            num_tmp = delta;
        }
        FUNC3(tmp, &module->addr_sorttab[module->num_sorttab], delta * sizeof(struct symt_ht*));
        FUNC5(tmp, delta, sizeof(struct symt_ht*), symt_cmp_addr);

        for (i = delta - 1; i >= 0; i--)
        {
            prev_ins_idx = ins_idx;
            ins_idx = FUNC6(module, ins_idx, tmp[i]);
            FUNC4(&module->addr_sorttab[ins_idx + i + 1],
                    &module->addr_sorttab[ins_idx],
                    (prev_ins_idx - ins_idx) * sizeof(struct symt_ht*));
            module->addr_sorttab[ins_idx + i] = tmp[i];
        }
    }
    module->num_sorttab = module->num_symbols;
    return module->sortlist_valid = TRUE;
}