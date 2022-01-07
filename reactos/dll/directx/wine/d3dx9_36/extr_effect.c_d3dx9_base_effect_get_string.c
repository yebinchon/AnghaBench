
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {scalar_t__ type; scalar_t__ data; int element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int HRESULT ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;
 scalar_t__ D3DXPT_STRING ;
 int D3D_OK ;
 int TRACE (char*,int ) ;
 int WARN (char*) ;
 int debugstr_a (char const*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_string(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const char **string)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (string && param && !param->element_count && param->type == D3DXPT_STRING)
    {
        *string = *(const char **)param->data;
        TRACE("Returning %s.\n", debugstr_a(*string));
        return D3D_OK;
    }

    WARN("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}
