
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_regstore {int * tables; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 unsigned int PRES_REGTAB_COUNT ;

__attribute__((used)) static void regstore_free_tables(struct d3dx_regstore *rs)
{
    unsigned int i;

    for (i = 0; i < PRES_REGTAB_COUNT; ++i)
    {
        HeapFree(GetProcessHeap(), 0, rs->tables[i]);
    }
}
