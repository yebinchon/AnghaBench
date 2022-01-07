
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
 int FAILED (int ) ;
 int FIXME (char*,int ) ;
 int IUnknown_AddRef (int *) ;
 int IUnknown_Release (int *) ;
 int TRACE (char*,...) ;
 int WARN (char*,...) ;
 int debug_d3dxparameter_type (int) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 scalar_t__ is_param_type_sampler (int) ;
 int memcpy (scalar_t__,void const*,scalar_t__) ;
 int set_dirty (struct d3dx_parameter*) ;
 int set_string (char**,char const*) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_set_value(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const void *data, UINT bytes)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);
    unsigned int i;

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
        switch (param->type)
        {
            case 133:
            case 132:
            case 131:
            case 130:
            case 129:
                for (i = 0; i < (param->element_count ? param->element_count : 1); ++i)
                {
                    IUnknown *old_texture = ((IUnknown **)param->data)[i];
                    IUnknown *new_texture = ((IUnknown **)data)[i];

                    if (new_texture == old_texture)
                        continue;

                    if (new_texture)
                        IUnknown_AddRef(new_texture);
                    if (old_texture)
                        IUnknown_Release(old_texture);
                }

            case 128:
            case 137:
            case 135:
            case 136:
                TRACE("Copy %u bytes.\n", param->bytes);
                memcpy(param->data, data, param->bytes);
                set_dirty(param);
                break;

            case 134:
            {
                HRESULT hr;

                set_dirty(param);
                for (i = 0; i < (param->element_count ? param->element_count : 1); ++i)
                {
                    if (FAILED(hr = set_string(&((char **)param->data)[i], ((const char **)data)[i])))
                        return hr;
                }
                break;
            }

            default:
                FIXME("Unhandled type %s.\n", debug_d3dxparameter_type(param->type));
                break;
        }

        return D3D_OK;
    }

    WARN("Invalid argument specified\n");

    return D3DERR_INVALIDCALL;
}
