
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
 int FALSE ;
 int FIXME (char*,int ) ;
 int TRACE (char*,int ) ;
 int WARN (char*) ;
 int debug_d3dxparameter_class (int) ;
 int get_matrix (int *,int *,int ) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_matrix_array(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, D3DXMATRIX *matrix, UINT count)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (!count) return D3D_OK;

    if (matrix && param && count <= param->element_count)
    {
        UINT i;

        TRACE("Class %s\n", debug_d3dxparameter_class(param->class));

        switch (param->class)
        {
            case 132:
                for (i = 0; i < count; ++i)
                {
                    get_matrix(&param->members[i], &matrix[i], FALSE);
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
