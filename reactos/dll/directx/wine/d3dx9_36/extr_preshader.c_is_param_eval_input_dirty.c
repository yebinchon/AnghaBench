
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inputs; } ;
struct d3dx_param_eval {int shader_inputs; TYPE_1__ pres; } ;
typedef int ULONG64 ;
typedef int BOOL ;


 scalar_t__ is_const_tab_input_dirty (int *,int ) ;

BOOL is_param_eval_input_dirty(struct d3dx_param_eval *peval, ULONG64 update_version)
{
    return is_const_tab_input_dirty(&peval->pres.inputs, update_version)
            || is_const_tab_input_dirty(&peval->shader_inputs, update_version);
}
