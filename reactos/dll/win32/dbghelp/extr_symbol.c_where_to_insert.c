
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt_ht {int symt; } ;
struct module {int dummy; } ;
typedef int ULONG64 ;


 int cmp_sorttab_addr (struct module*,unsigned int,int ) ;
 int symt_get_address (int *,int *) ;

__attribute__((used)) static inline unsigned where_to_insert(struct module* module, unsigned high, const struct symt_ht* elt)
{
    unsigned low = 0, mid = high / 2;
    ULONG64 addr;

    if (!high) return 0;
    symt_get_address(&elt->symt, &addr);
    do
    {
        switch (cmp_sorttab_addr(module, mid, addr))
        {
        case 0: return mid;
        case -1: low = mid + 1; break;
        case 1: high = mid; break;
        }
        mid = low + (high - low) / 2;
    } while (low < high);
    return mid;
}
