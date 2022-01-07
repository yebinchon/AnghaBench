
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_preshader {int inputs; int regs; int ins; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int d3dx_free_const_tab (int *) ;
 int regstore_free_tables (int *) ;

__attribute__((used)) static void d3dx_free_preshader(struct d3dx_preshader *pres)
{
    HeapFree(GetProcessHeap(), 0, pres->ins);

    regstore_free_tables(&pres->regs);
    d3dx_free_const_tab(&pres->inputs);
}
