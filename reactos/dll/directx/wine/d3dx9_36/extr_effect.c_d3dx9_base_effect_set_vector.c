
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct d3dx_parameter {int class; int bytes; int columns; scalar_t__ data; int type; int element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
struct TYPE_5__ {int w; int x; int y; int z; } ;
typedef int INT ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ D3DXVECTOR4 ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;





 int D3DXPT_FLOAT ;
 int D3DXPT_INT ;
 int D3D_OK ;
 int FIXME (char*,int ) ;
 int INT_FLOAT_MULTI ;
 int TRACE (char*,...) ;
 int WARN (char*) ;
 int debug_d3dxparameter_class (int) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 int max (int ,float) ;
 int memcpy (scalar_t__,TYPE_1__ const*,int) ;
 int min (int ,float) ;
 int set_dirty (struct d3dx_parameter*) ;
 int set_vector (struct d3dx_parameter*,TYPE_1__ const*) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_set_vector(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const D3DXVECTOR4 *vector)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (param && !param->element_count)
    {
        TRACE("Class %s\n", debug_d3dxparameter_class(param->class));

        switch (param->class)
        {
            case 130:
            case 128:
                set_dirty(param);
                if (param->type == D3DXPT_INT && param->bytes == 4)
                {
                    DWORD tmp;

                    TRACE("INT fixup\n");
                    tmp = (DWORD)(max(min(vector->z, 1.0f), 0.0f) * INT_FLOAT_MULTI);
                    tmp += ((DWORD)(max(min(vector->y, 1.0f), 0.0f) * INT_FLOAT_MULTI)) << 8;
                    tmp += ((DWORD)(max(min(vector->x, 1.0f), 0.0f) * INT_FLOAT_MULTI)) << 16;
                    tmp += ((DWORD)(max(min(vector->w, 1.0f), 0.0f) * INT_FLOAT_MULTI)) << 24;

                    *(INT *)param->data = tmp;
                    return D3D_OK;
                }
                if (param->type == D3DXPT_FLOAT)
                {
                    memcpy(param->data, vector, param->columns * sizeof(float));
                    return D3D_OK;
                }

                set_vector(param, vector);
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
