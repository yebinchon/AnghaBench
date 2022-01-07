
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int class; int element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int HRESULT ;
typedef int D3DXMATRIX ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;





 int D3D_OK ;
 int FALSE ;
 int FIXME (char*,int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int WARN (char*) ;
 int debug_d3dxparameter_class (int) ;
 int get_matrix (struct d3dx_parameter*,int *,int ) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_matrix_transpose(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, D3DXMATRIX *matrix)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (matrix && param && !param->element_count)
    {
        TRACE("Class %s\n", debug_d3dxparameter_class(param->class));

        switch (param->class)
        {
            case 130:
            case 128:
                get_matrix(param, matrix, FALSE);
                return D3D_OK;

            case 132:
                get_matrix(param, matrix, TRUE);
                return D3D_OK;

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
