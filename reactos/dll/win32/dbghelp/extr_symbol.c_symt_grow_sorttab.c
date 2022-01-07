
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt_ht {int dummy; } ;
struct module {unsigned int sorttab_size; struct symt_ht** addr_sorttab; } ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 struct symt_ht** HeapAlloc (int ,int ,unsigned int) ;
 struct symt_ht** HeapReAlloc (int ,int ,struct symt_ht**,unsigned int) ;
 int TRUE ;

__attribute__((used)) static BOOL symt_grow_sorttab(struct module* module, unsigned sz)
{
    struct symt_ht** new;
    unsigned int size;

    if (sz <= module->sorttab_size) return TRUE;
    if (module->addr_sorttab)
    {
        size = module->sorttab_size * 2;
        new = HeapReAlloc(GetProcessHeap(), 0, module->addr_sorttab,
                          size * sizeof(struct symt_ht*));
    }
    else
    {
        size = 64;
        new = HeapAlloc(GetProcessHeap(), 0, size * sizeof(struct symt_ht*));
    }
    if (!new) return FALSE;
    module->sorttab_size = size;
    module->addr_sorttab = new;
    return TRUE;
}
