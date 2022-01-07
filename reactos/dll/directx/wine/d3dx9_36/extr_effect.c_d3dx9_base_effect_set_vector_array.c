
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {scalar_t__ element_count; int class; int columns; float* data; int * members; int type; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;
typedef int D3DXVECTOR4 ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;





 int D3DXPT_FLOAT ;
 int D3D_OK ;
 int FIXME (char*,int ) ;
 int TRACE (char*,int ) ;
 int WARN (char*) ;
 int debug_d3dxparameter_class (int) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 int memcpy (float*,int const*,int) ;
 int set_dirty (struct d3dx_parameter*) ;
 int set_vector (int *,int const*) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_set_vector_array(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const D3DXVECTOR4 *vector, UINT count)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (param && param->element_count && param->element_count >= count)
    {
        UINT i;

        TRACE("Class %s\n", debug_d3dxparameter_class(param->class));

        switch (param->class)
        {
            case 128:
                set_dirty(param);
                if (param->type == D3DXPT_FLOAT)
                {
                    if (param->columns == 4)
                        memcpy(param->data, vector, count * 4 * sizeof(float));
                    else
                        for (i = 0; i < count; ++i)
                            memcpy((float *)param->data + param->columns * i, vector + i,
                                    param->columns * sizeof(float));
                    return D3D_OK;
                }

                for (i = 0; i < count; ++i)
                {
                    set_vector(&param->members[i], &vector[i]);
                }
                return D3D_OK;

            case 130:
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
