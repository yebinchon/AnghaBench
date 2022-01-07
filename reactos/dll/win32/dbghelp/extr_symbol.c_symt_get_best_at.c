
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module {int num_sorttab; TYPE_1__** addr_sorttab; } ;
typedef int ULONG64 ;
struct TYPE_4__ {scalar_t__ tag; } ;
struct TYPE_3__ {TYPE_2__ symt; } ;


 scalar_t__ SymTagPublicSymbol ;
 int cmp_sorttab_addr (struct module*,int,int ) ;
 int symt_get_address (TYPE_2__*,int *) ;

int symt_get_best_at(struct module* module, int idx_sorttab)
{
    ULONG64 ref_addr;
    int idx_sorttab_orig = idx_sorttab;
    if (module->addr_sorttab[idx_sorttab]->symt.tag == SymTagPublicSymbol)
    {
        symt_get_address(&module->addr_sorttab[idx_sorttab]->symt, &ref_addr);
        while (idx_sorttab > 0 &&
               module->addr_sorttab[idx_sorttab]->symt.tag == SymTagPublicSymbol &&
               !cmp_sorttab_addr(module, idx_sorttab - 1, ref_addr))
            idx_sorttab--;
        if (module->addr_sorttab[idx_sorttab]->symt.tag == SymTagPublicSymbol)
        {
            idx_sorttab = idx_sorttab_orig;
            while (idx_sorttab < module->num_sorttab - 1 &&
                   module->addr_sorttab[idx_sorttab]->symt.tag == SymTagPublicSymbol &&
                   !cmp_sorttab_addr(module, idx_sorttab + 1, ref_addr))
                idx_sorttab++;
        }

        if (module->addr_sorttab[idx_sorttab]->symt.tag == SymTagPublicSymbol)
            idx_sorttab = idx_sorttab_orig;
    }
    return idx_sorttab;
}
