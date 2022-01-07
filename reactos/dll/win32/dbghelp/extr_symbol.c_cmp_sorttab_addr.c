
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {TYPE_1__** addr_sorttab; } ;
typedef int ULONG64 ;
struct TYPE_2__ {int symt; } ;


 int cmp_addr (int ,int ) ;
 int symt_get_address (int *,int *) ;

__attribute__((used)) static inline int cmp_sorttab_addr(struct module* module, int idx, ULONG64 addr)
{
    ULONG64 ref;
    symt_get_address(&module->addr_sorttab[idx]->symt, &ref);
    return cmp_addr(ref, addr);
}
