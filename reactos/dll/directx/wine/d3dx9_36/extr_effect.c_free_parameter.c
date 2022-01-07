
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {unsigned int element_count; unsigned int member_count; struct d3dx_parameter* semantic; struct d3dx_parameter* name; struct d3dx_parameter* members; scalar_t__ param_eval; int type; } ;
typedef int BOOL ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct d3dx_parameter*) ;
 int TRACE (char*,struct d3dx_parameter*,struct d3dx_parameter*,int ,int,int) ;
 int TRUE ;
 int d3dx_free_param_eval (scalar_t__) ;
 int debug_d3dxparameter_type (int ) ;
 int free_parameter_data (struct d3dx_parameter*,int) ;

__attribute__((used)) static void free_parameter(struct d3dx_parameter *param, BOOL element, BOOL child)
{
    unsigned int i;

    TRACE("Free parameter %p, name %s, type %s, element %#x, child %#x.\n", param, param->name,
            debug_d3dxparameter_type(param->type), element, child);

    if (param->param_eval)
        d3dx_free_param_eval(param->param_eval);

    if (param->members)
    {
        unsigned int count = param->element_count ? param->element_count : param->member_count;

        for (i = 0; i < count; ++i)
            free_parameter(&param->members[i], param->element_count != 0, TRUE);
        HeapFree(GetProcessHeap(), 0, param->members);
    }

    free_parameter_data(param, child);


    if (!element)
    {
        HeapFree(GetProcessHeap(), 0, param->name);
        HeapFree(GetProcessHeap(), 0, param->semantic);
    }
}
