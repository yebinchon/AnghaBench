
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_const_tab {int const_set; int inputs_param; int inputs; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;

__attribute__((used)) static void d3dx_free_const_tab(struct d3dx_const_tab *ctab)
{
    HeapFree(GetProcessHeap(), 0, ctab->inputs);
    HeapFree(GetProcessHeap(), 0, ctab->inputs_param);
    HeapFree(GetProcessHeap(), 0, ctab->const_set);
}
