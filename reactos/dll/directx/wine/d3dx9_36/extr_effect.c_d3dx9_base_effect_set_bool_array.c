
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int bytes; int class; int type; scalar_t__ data; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef size_t UINT ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int D3DXHANDLE ;
typedef int BOOL ;


 int D3DERR_INVALIDCALL ;





 int D3DXPT_INT ;
 int D3D_OK ;
 int FIXME (char*,int ) ;
 int TRACE (char*,int ) ;
 int WARN (char*) ;
 int debug_d3dxparameter_class (int) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 size_t min (size_t,int) ;
 int set_dirty (struct d3dx_parameter*) ;
 int set_number (int *,int ,int const*,int ) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_set_bool_array(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const BOOL *b, UINT count)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (param)
    {
        UINT i, size = min(count, param->bytes / sizeof(DWORD));

        TRACE("Class %s\n", debug_d3dxparameter_class(param->class));

        switch (param->class)
        {
            case 130:
            case 128:
            case 132:
                for (i = 0; i < size; ++i)
                {

                    set_number((DWORD *)param->data + i, param->type, &b[i], D3DXPT_INT);
                }
                set_dirty(param);
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
