
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {scalar_t__ type; int data; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int HRESULT ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;
 scalar_t__ D3DXPT_STRING ;
 int WARN (char*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 int set_dirty (struct d3dx_parameter*) ;
 int set_string (int ,char const*) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_set_string(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const char *string)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (param && param->type == D3DXPT_STRING)
    {
        set_dirty(param);
        return set_string(param->data, string);
    }

    WARN("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}
