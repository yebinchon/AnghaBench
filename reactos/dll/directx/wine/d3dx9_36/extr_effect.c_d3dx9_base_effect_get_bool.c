
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int rows; int columns; int type; int data; int element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int HRESULT ;
typedef int D3DXHANDLE ;
typedef scalar_t__ BOOL ;


 int D3DERR_INVALIDCALL ;
 int D3DXPT_BOOL ;
 int D3D_OK ;
 int TRACE (char*,char*) ;
 int WARN (char*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 int set_number (scalar_t__*,int ,int ,int ) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_bool(struct d3dx9_base_effect *base, D3DXHANDLE parameter, BOOL *b)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (b && param && !param->element_count && param->rows == 1 && param->columns == 1)
    {
        set_number(b, D3DXPT_BOOL, param->data, param->type);
        TRACE("Returning %s\n", *b ? "TRUE" : "FALSE");
        return D3D_OK;
    }

    WARN("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}
