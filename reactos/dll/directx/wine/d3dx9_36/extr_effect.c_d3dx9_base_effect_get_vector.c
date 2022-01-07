
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct d3dx_parameter {int class; int bytes; scalar_t__ data; int type; int element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
struct TYPE_4__ {int x; int y; int z; int w; } ;
typedef int INT ;
typedef int HRESULT ;
typedef TYPE_1__ D3DXVECTOR4 ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;





 int D3DXPT_INT ;
 int D3D_OK ;
 int FIXME (char*,int ) ;
 int INT_FLOAT_MULTI_INVERSE ;
 int TRACE (char*,...) ;
 int WARN (char*) ;
 int debug_d3dxparameter_class (int) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 int get_vector (struct d3dx_parameter*,TYPE_1__*) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_vector(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, D3DXVECTOR4 *vector)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (vector && param && !param->element_count)
    {
        TRACE("Class %s\n", debug_d3dxparameter_class(param->class));

        switch (param->class)
        {
            case 130:
            case 128:
                if (param->type == D3DXPT_INT && param->bytes == 4)
                {
                    TRACE("INT fixup\n");
                    vector->x = (((*(INT *)param->data) & 0xff0000) >> 16) * INT_FLOAT_MULTI_INVERSE;
                    vector->y = (((*(INT *)param->data) & 0xff00) >> 8) * INT_FLOAT_MULTI_INVERSE;
                    vector->z = ((*(INT *)param->data) & 0xff) * INT_FLOAT_MULTI_INVERSE;
                    vector->w = (((*(INT *)param->data) & 0xff000000) >> 24) * INT_FLOAT_MULTI_INVERSE;
                    return D3D_OK;
                }
                get_vector(param, vector);
                return D3D_OK;

            case 132:
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
