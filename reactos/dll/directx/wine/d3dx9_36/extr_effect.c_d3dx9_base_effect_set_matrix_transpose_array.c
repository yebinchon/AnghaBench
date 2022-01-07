
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {scalar_t__ element_count; int class; int * members; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;
typedef int D3DXMATRIX ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;





 int D3D_OK ;
 int FIXME (char*,int ) ;
 int TRACE (char*,int ) ;
 int WARN (char*) ;
 int debug_d3dxparameter_class (int) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 int set_dirty (struct d3dx_parameter*) ;
 int set_matrix_transpose (int *,int const*) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_set_matrix_transpose_array(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const D3DXMATRIX *matrix, UINT count)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (param && param->element_count >= count)
    {
        UINT i;

        TRACE("Class %s\n", debug_d3dxparameter_class(param->class));

        switch (param->class)
        {
            case 132:
                set_dirty(param);
                for (i = 0; i < count; ++i)
                {
                    set_matrix_transpose(&param->members[i], &matrix[i]);
                }
                return D3D_OK;

            case 130:
            case 128:
            case 131:
            case 129:
                break;

            default:
                FIXME("Unhandled class %s\n", debug_d3dxparameter_class(param->class));
                break;
        }
    }

    WARN("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}
