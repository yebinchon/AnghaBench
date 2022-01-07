
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int rows; int columns; scalar_t__ data; int type; int element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;
 int D3DXPT_FLOAT ;
 int D3D_OK ;
 int WARN (char*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 int set_dirty (struct d3dx_parameter*) ;
 int set_number (scalar_t__*,int ,float*,int ) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_set_float(struct d3dx9_base_effect *base, D3DXHANDLE parameter, float f)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (param && !param->element_count && param->rows == 1 && param->columns == 1)
    {
        DWORD value;

        set_number(&value, param->type, &f, D3DXPT_FLOAT);
        if (value != *(DWORD *)param->data)
            set_dirty(param);
         *(DWORD *)param->data = value;
        return D3D_OK;
    }

    WARN("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}
