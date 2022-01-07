
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int D3DXHANDLE ;


 int TRACE (char*,int ) ;
 struct d3dx_parameter* get_parameter_by_name (struct d3dx9_base_effect*,struct d3dx_parameter*,char const*) ;
 int get_parameter_handle (struct d3dx_parameter*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;

__attribute__((used)) static D3DXHANDLE d3dx9_base_effect_get_parameter_by_name(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const char *name)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);
    D3DXHANDLE handle;

    if (!name)
    {
        handle = get_parameter_handle(param);
        TRACE("Returning parameter %p.\n", handle);
        return handle;
    }

    handle = get_parameter_handle(get_parameter_by_name(base, param, name));
    TRACE("Returning parameter %p.\n", handle);

    return handle;
}
