
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_d3d11 {int dev; } ;
struct ra {int max_texture_wh; struct ra_d3d11* priv; } ;
struct TYPE_4__ {int Count; } ;
struct TYPE_5__ {int Width; int Height; int MipLevels; int ArraySize; int BindFlags; int Format; TYPE_1__ SampleDesc; } ;
typedef TYPE_2__ D3D11_TEXTURE2D_DESC ;


 int D3D11_BIND_SHADER_RESOURCE ;
 int DXGI_FORMAT_R8_UNORM ;
 scalar_t__ FAILED (int ) ;
 int ID3D11Device_CreateTexture2D (int ,TYPE_2__*,int *,int *) ;

__attribute__((used)) static void find_max_texture_dimension(struct ra *ra)
{
    struct ra_d3d11 *p = ra->priv;

    D3D11_TEXTURE2D_DESC desc = {
        .Width = ra->max_texture_wh,
        .Height = ra->max_texture_wh,
        .MipLevels = 1,
        .ArraySize = 1,
        .SampleDesc.Count = 1,
        .Format = DXGI_FORMAT_R8_UNORM,
        .BindFlags = D3D11_BIND_SHADER_RESOURCE,
    };
    while (1) {
        desc.Height = desc.Width *= 2;
        if (desc.Width >= 0x8000000u)
            return;
        if (FAILED(ID3D11Device_CreateTexture2D(p->dev, &desc, ((void*)0), ((void*)0))))
            return;
        ra->max_texture_wh = desc.Width;
    }
}
