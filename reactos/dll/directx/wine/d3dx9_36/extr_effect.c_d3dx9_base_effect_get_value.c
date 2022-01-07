
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {scalar_t__ class; int type; scalar_t__ bytes; int element_count; scalar_t__ data; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef scalar_t__ UINT ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;
 scalar_t__ D3DXPC_OBJECT ;
 int D3D_OK ;
 int E_FAIL ;
 int FIXME (char*,scalar_t__) ;
 int IUnknown_AddRef (int *) ;
 int TRACE (char*,...) ;
 int WARN (char*,...) ;
 scalar_t__ debug_d3dxparameter_type (int) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 scalar_t__ is_param_type_sampler (int) ;
 int memcpy (void*,scalar_t__,scalar_t__) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_value(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, void *data, UINT bytes)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (!param)
    {
        WARN("Invalid parameter %p specified\n", parameter);
        return D3DERR_INVALIDCALL;
    }


    if (param->class == D3DXPC_OBJECT && is_param_type_sampler(param->type))
    {
        TRACE("Sampler: returning E_FAIL\n");
        return E_FAIL;
    }

    if (data && param->bytes <= bytes)
    {
        TRACE("Type %s\n", debug_d3dxparameter_type(param->type));

        switch (param->type)
        {
            case 128:
            case 139:
            case 137:
            case 138:
            case 135:
                break;

            case 129:
            case 136:
            case 134:
            case 133:
            case 132:
            case 131:
            case 130:
            {
                UINT i;

                for (i = 0; i < (param->element_count ? param->element_count : 1); ++i)
                {
                    IUnknown *unk = ((IUnknown **)param->data)[i];
                    if (unk) IUnknown_AddRef(unk);
                }
                break;
            }

            default:
                FIXME("Unhandled type %s\n", debug_d3dxparameter_type(param->type));
                break;
        }

        TRACE("Copy %u bytes\n", param->bytes);
        memcpy(data, param->data, param->bytes);
        return D3D_OK;
    }

    WARN("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}
