
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ra_tex_params {int dimensions; scalar_t__ storage_dst; scalar_t__ blit_dst; scalar_t__ render_dst; scalar_t__ src_repeat; scalar_t__ src_linear; scalar_t__ render_src; int format; scalar_t__ blit_src; } ;
struct ra_tex {struct ra_tex_params params; struct d3d_tex* priv; } ;
struct ra_d3d11 {scalar_t__ fl; int dev; } ;
struct ra {struct ra_d3d11* priv; } ;
struct d3d_tex {int uav; int res; int rtv; int sampler; int srv; int array_slice; } ;
struct TYPE_16__ {int MaxAnisotropy; int AddressW; int AddressV; int AddressU; int Filter; int MaxLOD; int MinLOD; int ComparisonFunc; } ;
struct TYPE_14__ {int MipLevels; } ;
struct TYPE_13__ {int MipLevels; } ;
struct TYPE_12__ {int MipLevels; int ArraySize; int FirstArraySlice; } ;
struct TYPE_11__ {int MipLevels; } ;
struct TYPE_10__ {int MipLevels; int ArraySize; int FirstArraySlice; } ;
struct TYPE_15__ {TYPE_5__ Texture3D; int ViewDimension; TYPE_4__ Texture2D; TYPE_3__ Texture2DArray; TYPE_2__ Texture1D; TYPE_1__ Texture1DArray; int Format; } ;
typedef int HRESULT ;
typedef TYPE_6__ D3D11_SHADER_RESOURCE_VIEW_DESC ;
typedef TYPE_7__ D3D11_SAMPLER_DESC ;


 int D3D11_COMPARISON_NEVER ;
 int D3D11_FILTER_MIN_MAG_MIP_LINEAR ;
 int D3D11_FLOAT32_MAX ;
 int D3D11_SRV_DIMENSION_TEXTURE1D ;
 int D3D11_SRV_DIMENSION_TEXTURE1DARRAY ;
 int D3D11_SRV_DIMENSION_TEXTURE2D ;
 int D3D11_SRV_DIMENSION_TEXTURE2DARRAY ;
 int D3D11_SRV_DIMENSION_TEXTURE3D ;
 int D3D11_TEXTURE_ADDRESS_CLAMP ;
 int D3D11_TEXTURE_ADDRESS_WRAP ;
 scalar_t__ D3D_FEATURE_LEVEL_11_0 ;
 scalar_t__ FAILED (int ) ;
 int ID3D11Device_CreateRenderTargetView (int ,int ,int *,int *) ;
 int ID3D11Device_CreateSamplerState (int ,TYPE_7__*,int *) ;
 int ID3D11Device_CreateShaderResourceView (int ,int ,TYPE_6__*,int *) ;
 int ID3D11Device_CreateUnorderedAccessView (int ,int ,int *,int *) ;
 int MP_ERR (struct ra*,char*,int ) ;
 int fmt_to_dxgi (int ) ;
 int mp_HRESULT_to_str (int ) ;

__attribute__((used)) static bool tex_init(struct ra *ra, struct ra_tex *tex)
{
    struct ra_d3d11 *p = ra->priv;
    struct d3d_tex *tex_p = tex->priv;
    struct ra_tex_params *params = &tex->params;
    HRESULT hr;



    if (params->render_src || params->blit_src) {



        D3D11_SHADER_RESOURCE_VIEW_DESC srvdesc = {
            .Format = fmt_to_dxgi(params->format),
        };
        switch (params->dimensions) {
        case 1:
            if (tex_p->array_slice >= 0) {
                srvdesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE1DARRAY;
                srvdesc.Texture1DArray.MipLevels = 1;
                srvdesc.Texture1DArray.FirstArraySlice = tex_p->array_slice;
                srvdesc.Texture1DArray.ArraySize = 1;
            } else {
                srvdesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE1D;
                srvdesc.Texture1D.MipLevels = 1;
            }
            break;
        case 2:
            if (tex_p->array_slice >= 0) {
                srvdesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE2DARRAY;
                srvdesc.Texture2DArray.MipLevels = 1;
                srvdesc.Texture2DArray.FirstArraySlice = tex_p->array_slice;
                srvdesc.Texture2DArray.ArraySize = 1;
            } else {
                srvdesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE2D;
                srvdesc.Texture2D.MipLevels = 1;
            }
            break;
        case 3:

            srvdesc.ViewDimension = D3D11_SRV_DIMENSION_TEXTURE3D;
            srvdesc.Texture3D.MipLevels = 1;
            break;
        }
        hr = ID3D11Device_CreateShaderResourceView(p->dev, tex_p->res, &srvdesc,
                                                   &tex_p->srv);
        if (FAILED(hr)) {
            MP_ERR(ra, "Failed to create SRV: %s\n", mp_HRESULT_to_str(hr));
            goto error;
        }
    }



    if (params->render_src) {
        D3D11_SAMPLER_DESC sdesc = {
            .AddressU = D3D11_TEXTURE_ADDRESS_CLAMP,
            .AddressV = D3D11_TEXTURE_ADDRESS_CLAMP,
            .AddressW = D3D11_TEXTURE_ADDRESS_CLAMP,
            .ComparisonFunc = D3D11_COMPARISON_NEVER,
            .MinLOD = 0,
            .MaxLOD = D3D11_FLOAT32_MAX,
            .MaxAnisotropy = 1,
        };
        if (params->src_linear)
            sdesc.Filter = D3D11_FILTER_MIN_MAG_MIP_LINEAR;
        if (params->src_repeat) {
            sdesc.AddressU = sdesc.AddressV = sdesc.AddressW =
                D3D11_TEXTURE_ADDRESS_WRAP;
        }


        hr = ID3D11Device_CreateSamplerState(p->dev, &sdesc, &tex_p->sampler);
        if (FAILED(hr)) {
            MP_ERR(ra, "Failed to create sampler: %s\n", mp_HRESULT_to_str(hr));
            goto error;
        }
    }


    if (params->render_dst || params->blit_dst) {
        hr = ID3D11Device_CreateRenderTargetView(p->dev, tex_p->res, ((void*)0),
                                                 &tex_p->rtv);
        if (FAILED(hr)) {
            MP_ERR(ra, "Failed to create RTV: %s\n", mp_HRESULT_to_str(hr));
            goto error;
        }
    }

    if (p->fl >= D3D_FEATURE_LEVEL_11_0 && params->storage_dst) {
        hr = ID3D11Device_CreateUnorderedAccessView(p->dev, tex_p->res, ((void*)0),
                                                    &tex_p->uav);
        if (FAILED(hr)) {
            MP_ERR(ra, "Failed to create UAV: %s\n", mp_HRESULT_to_str(hr));
            goto error;
        }
    }

    return 1;
error:
    return 0;
}
