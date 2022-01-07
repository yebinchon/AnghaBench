
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int texture_state; int sampler_state; } ;
struct tss_lookup {TYPE_1__ u; scalar_t__ sampler_state; } ;
struct d3d_device {int wined3d_device; } ;
typedef int IDirect3DDevice7 ;
typedef int HRESULT ;
typedef int DWORD ;
typedef size_t D3DTEXTURESTAGESTATETYPE ;


 int D3DTFG_ANISOTROPIC ;
 int D3DTFG_FLATCUBIC ;
 int D3DTFG_GAUSSIANCUBIC ;
 int D3DTFG_LINEAR ;
 int D3DTFG_POINT ;
 int D3DTFP_LINEAR ;
 int D3DTFP_NONE ;
 int D3DTFP_POINT ;


 size_t D3DTSS_TEXTURETRANSFORMFLAGS ;
 int D3D_OK ;
 int DDERR_INVALIDPARAMS ;
 int DD_OK ;
 int ERR (char*,int ) ;
 int TRACE (char*,int *,int ,size_t,int *) ;
 int WARN (char*,size_t) ;






 struct d3d_device* impl_from_IDirect3DDevice7 (int *) ;
 struct tss_lookup* tss_lookup ;
 int wined3d_device_get_sampler_state (int ,int ,int ) ;
 int wined3d_device_get_texture_stage_state (int ,int ,int ) ;
 int wined3d_mutex_lock () ;
 int wined3d_mutex_unlock () ;

__attribute__((used)) static HRESULT d3d_device7_GetTextureStageState(IDirect3DDevice7 *iface,
        DWORD stage, D3DTEXTURESTAGESTATETYPE state, DWORD *value)
{
    struct d3d_device *device = impl_from_IDirect3DDevice7(iface);
    const struct tss_lookup *l;

    TRACE("iface %p, stage %u, state %#x, value %p.\n",
            iface, stage, state, value);

    if (!value)
        return DDERR_INVALIDPARAMS;

    if (state > D3DTSS_TEXTURETRANSFORMFLAGS)
    {
        WARN("Invalid state %#x passed.\n", state);
        return DD_OK;
    }

    l = &tss_lookup[state];

    wined3d_mutex_lock();

    if (l->sampler_state)
    {
        *value = wined3d_device_get_sampler_state(device->wined3d_device, stage, l->u.sampler_state);

        switch (state)
        {

            case 134:
            {
                switch (*value)
                {
                    case 129:
                        *value = D3DTFP_NONE;
                        break;
                    case 128:
                        *value = D3DTFP_POINT;
                        break;
                    case 130:
                        *value = D3DTFP_LINEAR;
                        break;
                    default:
                        ERR("Unexpected mipfilter value %#x.\n", *value);
                        *value = D3DTFP_NONE;
                        break;
                }
                break;
            }


            case 135:
            {
                switch (*value)
                {
                    case 128:
                            *value = D3DTFG_POINT;
                            break;
                    case 130:
                            *value = D3DTFG_LINEAR;
                            break;
                    case 133:
                            *value = D3DTFG_ANISOTROPIC;
                            break;
                    case 132:
                            *value = D3DTFG_FLATCUBIC;
                            break;
                    case 131:
                            *value = D3DTFG_GAUSSIANCUBIC;
                            break;
                    default:
                        ERR("Unexpected wined3d mag filter value %#x.\n", *value);
                        *value = D3DTFG_POINT;
                        break;
                }
                break;
            }

            default:
                break;
        }
    }
    else
    {
        *value = wined3d_device_get_texture_stage_state(device->wined3d_device, stage, l->u.texture_state);
    }

    wined3d_mutex_unlock();

    return D3D_OK;
}
