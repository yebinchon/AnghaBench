
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symt_ht {int dummy; } ;
struct TYPE_2__ {int NumSyms; } ;
struct module {int num_symbols; int num_sorttab; int sortlist_valid; struct symt_ht** addr_sorttab; TYPE_1__ module; } ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 struct symt_ht** HeapAlloc (int ,int ,int) ;
 struct symt_ht** HeapReAlloc (int ,int ,struct symt_ht**,int) ;
 int TRUE ;
 int memcpy (struct symt_ht**,struct symt_ht**,int) ;
 int memmove (struct symt_ht**,struct symt_ht**,int) ;
 int qsort (struct symt_ht**,int,int,int ) ;
 int symt_cmp_addr ;
 int where_to_insert (struct module*,int,struct symt_ht*) ;

__attribute__((used)) static BOOL resort_symbols(struct module* module)
{
    int delta;

    if (!(module->module.NumSyms = module->num_symbols))
        return FALSE;





    delta = module->num_symbols - module->num_sorttab;
    qsort(&module->addr_sorttab[module->num_sorttab], delta, sizeof(struct symt_ht*), symt_cmp_addr);
    if (module->num_sorttab)
    {
        int i, ins_idx = module->num_sorttab, prev_ins_idx;
        static struct symt_ht** tmp;
        static unsigned num_tmp;

        if (num_tmp < delta)
        {
            static struct symt_ht** new;
            if (tmp)
                new = HeapReAlloc(GetProcessHeap(), 0, tmp, delta * sizeof(struct symt_ht*));
            else
                new = HeapAlloc(GetProcessHeap(), 0, delta * sizeof(struct symt_ht*));
            if (!new)
            {
                module->num_sorttab = 0;
                return resort_symbols(module);
            }
            tmp = new;
            num_tmp = delta;
        }
        memcpy(tmp, &module->addr_sorttab[module->num_sorttab], delta * sizeof(struct symt_ht*));
        qsort(tmp, delta, sizeof(struct symt_ht*), symt_cmp_addr);

        for (i = delta - 1; i >= 0; i--)
        {
            prev_ins_idx = ins_idx;
            ins_idx = where_to_insert(module, ins_idx, tmp[i]);
            memmove(&module->addr_sorttab[ins_idx + i + 1],
                    &module->addr_sorttab[ins_idx],
                    (prev_ins_idx - ins_idx) * sizeof(struct symt_ht*));
            module->addr_sorttab[ins_idx + i] = tmp[i];
        }
    }
    module->num_sorttab = module->num_symbols;
    return module->sortlist_valid = TRUE;
}
