
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {scalar_t__ class; int bytes; int type; scalar_t__ data; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef size_t UINT ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;
 scalar_t__ D3DXPC_MATRIX_COLUMNS ;
 scalar_t__ D3DXPC_MATRIX_ROWS ;
 scalar_t__ D3DXPC_SCALAR ;
 scalar_t__ D3DXPC_VECTOR ;
 int D3DXPT_FLOAT ;
 int D3D_OK ;
 int WARN (char*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 size_t min (size_t,int) ;
 int set_number (float*,int ,int *,int ) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_float_array(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, float *f, UINT count)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (f && param && (param->class == D3DXPC_SCALAR
            || param->class == D3DXPC_VECTOR
            || param->class == D3DXPC_MATRIX_ROWS
            || param->class == D3DXPC_MATRIX_COLUMNS))
    {
        UINT i, size = min(count, param->bytes / sizeof(DWORD));

        for (i = 0; i < size; ++i)
        {
            set_number(&f[i], D3DXPT_FLOAT, (DWORD *)param->data + i, param->type);
        }
        return D3D_OK;
    }

    WARN("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}
