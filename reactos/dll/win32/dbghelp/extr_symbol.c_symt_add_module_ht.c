
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt_ht {int symt; int hash_elt; } ;
struct module {int sortlist_valid; scalar_t__ num_symbols; struct symt_ht** addr_sorttab; int ht_symbols; } ;
typedef int ULONG64 ;


 int FALSE ;
 int hash_table_add (int *,int *) ;
 scalar_t__ symt_get_address (int *,int *) ;
 scalar_t__ symt_grow_sorttab (struct module*,scalar_t__) ;

__attribute__((used)) static void symt_add_module_ht(struct module* module, struct symt_ht* ht)
{
    ULONG64 addr;

    hash_table_add(&module->ht_symbols, &ht->hash_elt);



    if (symt_get_address(&ht->symt, &addr) &&
        symt_grow_sorttab(module, module->num_symbols + 1))
    {
        module->addr_sorttab[module->num_symbols++] = ht;
        module->sortlist_valid = FALSE;
    }
}
