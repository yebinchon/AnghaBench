
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_param_eval {int shader_inputs; int pres; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct d3dx_param_eval*) ;
 int TRACE (char*,struct d3dx_param_eval*) ;
 int d3dx_free_const_tab (int *) ;
 int d3dx_free_preshader (int *) ;

void d3dx_free_param_eval(struct d3dx_param_eval *peval)
{
    TRACE("peval %p.\n", peval);

    if (!peval)
        return;

    d3dx_free_preshader(&peval->pres);
    d3dx_free_const_tab(&peval->shader_inputs);
    HeapFree(GetProcessHeap(), 0, peval);
}
