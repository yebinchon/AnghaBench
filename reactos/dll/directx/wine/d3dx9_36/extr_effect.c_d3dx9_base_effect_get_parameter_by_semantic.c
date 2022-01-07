
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3dx_parameter {size_t member_count; int semantic; struct d3dx_parameter* members; } ;
struct d3dx9_base_effect {size_t parameter_count; TYPE_1__* parameters; } ;
typedef size_t UINT ;
struct TYPE_2__ {struct d3dx_parameter param; } ;
typedef int * D3DXHANDLE ;


 int TRACE (char*,struct d3dx_parameter*) ;
 int WARN (char*) ;
 int * get_parameter_handle (struct d3dx_parameter*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int *) ;
 int strcasecmp (int ,char const*) ;

__attribute__((used)) static D3DXHANDLE d3dx9_base_effect_get_parameter_by_semantic(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const char *semantic)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);
    struct d3dx_parameter *temp_param;
    UINT i;

    if (!parameter)
    {
        for (i = 0; i < base->parameter_count; ++i)
        {
            temp_param = &base->parameters[i].param;

            if (!temp_param->semantic)
            {
                if (!semantic)
                {
                    TRACE("Returning parameter %p\n", temp_param);
                    return get_parameter_handle(temp_param);
                }
                continue;
            }

            if (!strcasecmp(temp_param->semantic, semantic))
            {
                TRACE("Returning parameter %p\n", temp_param);
                return get_parameter_handle(temp_param);
            }
        }
    }
    else if (param)
    {
        for (i = 0; i < param->member_count; ++i)
        {
            temp_param = &param->members[i];

            if (!temp_param->semantic)
            {
                if (!semantic)
                {
                    TRACE("Returning parameter %p\n", temp_param);
                    return get_parameter_handle(temp_param);
                }
                continue;
            }

            if (!strcasecmp(temp_param->semantic, semantic))
            {
                TRACE("Returning parameter %p\n", temp_param);
                return get_parameter_handle(temp_param);
            }
        }
    }

    WARN("Parameter not found.\n");

    return ((void*)0);
}
