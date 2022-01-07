
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt {int dummy; } ;
typedef int ULONG64 ;


 int cmp_addr (int ,int ) ;
 int symt_get_address (struct symt const*,int *) ;

int symt_cmp_addr(const void* p1, const void* p2)
{
    const struct symt* sym1 = *(const struct symt* const *)p1;
    const struct symt* sym2 = *(const struct symt* const *)p2;
    ULONG64 a1, a2;

    symt_get_address(sym1, &a1);
    symt_get_address(sym2, &a2);
    return cmp_addr(a1, a2);
}
