
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_tex_download_params {char* dst; int stride; struct ra_tex* tex; } ;
struct TYPE_4__ {int h; } ;
struct ra_tex {TYPE_1__ params; struct d3d_tex* priv; } ;
struct ra_d3d11 {int ctx; } ;
struct ra {struct ra_d3d11* priv; } ;
struct d3d_tex {scalar_t__ staging; int res; } ;
struct TYPE_5__ {char* pData; int RowPitch; } ;
typedef int ID3D11Resource ;
typedef int HRESULT ;
typedef TYPE_2__ D3D11_MAPPED_SUBRESOURCE ;


 int D3D11_MAP_READ ;
 scalar_t__ FAILED (int ) ;
 int ID3D11DeviceContext_CopyResource (int ,int *,int ) ;
 int ID3D11DeviceContext_Map (int ,int *,int ,int ,int ,TYPE_2__*) ;
 int ID3D11DeviceContext_Unmap (int ,int *,int ) ;
 int MPMIN (int,int) ;
 int MP_ERR (struct ra*,char*,int ) ;
 int memcpy (char*,char*,int ) ;
 int mp_HRESULT_to_str (int ) ;

__attribute__((used)) static bool tex_download(struct ra *ra, struct ra_tex_download_params *params)
{
    struct ra_d3d11 *p = ra->priv;
    struct ra_tex *tex = params->tex;
    struct d3d_tex *tex_p = tex->priv;
    HRESULT hr;

    if (!tex_p->staging)
        return 0;

    ID3D11DeviceContext_CopyResource(p->ctx, (ID3D11Resource*)tex_p->staging,
        tex_p->res);

    D3D11_MAPPED_SUBRESOURCE lock;
    hr = ID3D11DeviceContext_Map(p->ctx, (ID3D11Resource*)tex_p->staging, 0,
                                 D3D11_MAP_READ, 0, &lock);
    if (FAILED(hr)) {
        MP_ERR(ra, "Failed to map staging texture: %s\n", mp_HRESULT_to_str(hr));
        return 0;
    }

    char *cdst = params->dst;
    char *csrc = lock.pData;
    for (int y = 0; y < tex->params.h; y++) {
        memcpy(cdst + y * params->stride, csrc + y * lock.RowPitch,
               MPMIN(params->stride, lock.RowPitch));
    }

    ID3D11DeviceContext_Unmap(p->ctx, (ID3D11Resource*)tex_p->staging, 0);

    return 1;
}
