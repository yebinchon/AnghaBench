#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symt_ht {int /*<<< orphan*/  symt; } ;
struct module {int num_sorttab; struct symt_ht** addr_sorttab; int /*<<< orphan*/  sortlist_valid; } ;
typedef  scalar_t__ ULONG64 ;
typedef  scalar_t__ DWORD_PTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct module*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC3 (struct module*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct module*,int /*<<< orphan*/ *,scalar_t__*) ; 

struct symt_ht* FUNC5(struct module* module, DWORD_PTR addr)
{
    int         mid, high, low;
    ULONG64     ref_addr, ref_size;

    if (!module->sortlist_valid || !module->addr_sorttab)
    {
        if (!FUNC1(module)) return NULL;
    }

    /*
     * Binary search to find closest symbol.
     */
    low = 0;
    high = module->num_sorttab;

    FUNC2(&module->addr_sorttab[0]->symt, &ref_addr);
    if (addr <= ref_addr)
    {
        low = FUNC3(module, 0);
        return module->addr_sorttab[low];
    }

    if (high)
    {
        FUNC2(&module->addr_sorttab[high - 1]->symt, &ref_addr);
        FUNC4(module, &module->addr_sorttab[high - 1]->symt, &ref_size);
        if (addr >= ref_addr + ref_size) return NULL;
    }
    
    while (high > low + 1)
    {
        mid = (high + low) / 2;
        if (FUNC0(module, mid, addr) < 0)
            low = mid;
        else
            high = mid;
    }
    if (low != high && high != module->num_sorttab &&
        FUNC0(module, high, addr) <= 0)
        low = high;

    /* If found symbol is a public symbol, check if there are any other entries that
     * might also have the same address, but would get better information
     */
    low = FUNC3(module, low);

    /* finally check that we fit into the found symbol */
    //symt_get_address(&module->addr_sorttab[low]->symt, &ref_addr);
    //if (addr < ref_addr) return NULL;
    //symt_get_length(module, &module->addr_sorttab[low]->symt, &ref_size);
    //if (addr >= ref_addr + ref_size) return NULL;

    return module->addr_sorttab[low];
}