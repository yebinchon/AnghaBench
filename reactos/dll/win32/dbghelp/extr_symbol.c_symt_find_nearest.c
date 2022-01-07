
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt_ht {int symt; } ;
struct module {int num_sorttab; struct symt_ht** addr_sorttab; int sortlist_valid; } ;
typedef scalar_t__ ULONG64 ;
typedef scalar_t__ DWORD_PTR ;


 scalar_t__ cmp_sorttab_addr (struct module*,int,scalar_t__) ;
 int resort_symbols (struct module*) ;
 int symt_get_address (int *,scalar_t__*) ;
 int symt_get_best_at (struct module*,int) ;
 int symt_get_length (struct module*,int *,scalar_t__*) ;

struct symt_ht* symt_find_nearest(struct module* module, DWORD_PTR addr)
{
    int mid, high, low;
    ULONG64 ref_addr, ref_size;

    if (!module->sortlist_valid || !module->addr_sorttab)
    {
        if (!resort_symbols(module)) return ((void*)0);
    }




    low = 0;
    high = module->num_sorttab;

    symt_get_address(&module->addr_sorttab[0]->symt, &ref_addr);
    if (addr <= ref_addr)
    {
        low = symt_get_best_at(module, 0);
        return module->addr_sorttab[low];
    }

    if (high)
    {
        symt_get_address(&module->addr_sorttab[high - 1]->symt, &ref_addr);
        symt_get_length(module, &module->addr_sorttab[high - 1]->symt, &ref_size);
        if (addr >= ref_addr + ref_size) return ((void*)0);
    }

    while (high > low + 1)
    {
        mid = (high + low) / 2;
        if (cmp_sorttab_addr(module, mid, addr) < 0)
            low = mid;
        else
            high = mid;
    }
    if (low != high && high != module->num_sorttab &&
        cmp_sorttab_addr(module, high, addr) <= 0)
        low = high;




    low = symt_get_best_at(module, low);







    return module->addr_sorttab[low];
}
