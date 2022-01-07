
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int rows; int columns; scalar_t__ type; scalar_t__ class; scalar_t__ data; int element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int INT ;
typedef int HRESULT ;
typedef int FLOAT ;
typedef scalar_t__ DWORD ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;
 scalar_t__ D3DXPC_MATRIX_ROWS ;
 scalar_t__ D3DXPC_VECTOR ;
 scalar_t__ D3DXPT_FLOAT ;
 int D3DXPT_INT ;
 int D3D_OK ;
 int INT_FLOAT_MULTI_INVERSE ;
 int TRACE (char*) ;
 int WARN (char*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 int set_dirty (struct d3dx_parameter*) ;
 int set_number (scalar_t__*,scalar_t__,int*,int ) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_set_int(struct d3dx9_base_effect *base, D3DXHANDLE parameter, INT n)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (param && !param->element_count)
    {
        if (param->rows == 1 && param->columns == 1)
        {
            DWORD value;

            set_number(&value, param->type, &n, D3DXPT_INT);
            if (value != *(DWORD *)param->data)
                set_dirty(param);
             *(DWORD *)param->data = value;
            return D3D_OK;
        }




        if (param->type == D3DXPT_FLOAT &&
            ((param->class == D3DXPC_VECTOR && param->columns != 2) ||
            (param->class == D3DXPC_MATRIX_ROWS && param->rows != 2 && param->columns == 1)))
        {
            TRACE("Vector fixup\n");

            *(FLOAT *)param->data = ((n & 0xff0000) >> 16) * INT_FLOAT_MULTI_INVERSE;
            ((FLOAT *)param->data)[1] = ((n & 0xff00) >> 8) * INT_FLOAT_MULTI_INVERSE;
            ((FLOAT *)param->data)[2] = (n & 0xff) * INT_FLOAT_MULTI_INVERSE;
            if (param->rows * param->columns > 3)
            {
                ((FLOAT *)param->data)[3] = ((n & 0xff000000) >> 24) * INT_FLOAT_MULTI_INVERSE;
            }
            set_dirty(param);
            return D3D_OK;
        }
    }

    WARN("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}
