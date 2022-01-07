
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_technique {unsigned int pass_count; struct d3dx_pass* passes; } ;
struct d3dx_pass {unsigned int state_count; int * states; } ;
struct d3dx_parameter {int dummy; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int is_same_parameter ;
 scalar_t__ walk_state_dep (int *,int ,struct d3dx_parameter*) ;

__attribute__((used)) static BOOL is_parameter_used(struct d3dx_parameter *param, struct d3dx_technique *tech)
{
    unsigned int i, j;
    struct d3dx_pass *pass;

    if (!tech || !param)
        return FALSE;

    for (i = 0; i < tech->pass_count; ++i)
    {
        pass = &tech->passes[i];
        for (j = 0; j < pass->state_count; ++j)
        {
            if (walk_state_dep(&pass->states[j], is_same_parameter, param))
                return TRUE;
        }
    }
    return FALSE;
}
