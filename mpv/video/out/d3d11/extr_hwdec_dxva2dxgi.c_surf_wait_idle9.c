
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ra_hwdec_mapper {TYPE_1__* src; struct priv* priv; } ;
struct queue_surf {int stage9; int surf9; } ;
struct priv {size_t queue_pos; TYPE_2__** queue; int dev9; } ;
struct TYPE_8__ {int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_7__ {int busy11; } ;
struct TYPE_6__ {int h; int w; } ;
typedef TYPE_3__ RECT ;
typedef int HRESULT ;
typedef int D3DLOCKED_RECT ;


 int D3DLOCK_READONLY ;
 int D3DTEXF_NONE ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9Ex_StretchRect (int ,int ,TYPE_3__*,int ,TYPE_3__*,int ) ;
 int IDirect3DSurface9_LockRect (int ,int *,int *,int ) ;
 int IDirect3DSurface9_UnlockRect (int ) ;
 int MPMIN (int,int ) ;
 int MP_ERR (struct ra_hwdec_mapper*,char*,int ) ;
 int mp_HRESULT_to_str (int ) ;

__attribute__((used)) static bool surf_wait_idle9(struct ra_hwdec_mapper *mapper,
                            struct queue_surf *surf)
{
    struct priv *p = mapper->priv;
    HRESULT hr;




    RECT rc = {0, 0, MPMIN(16, mapper->src->w), MPMIN(16, mapper->src->h)};
    hr = IDirect3DDevice9Ex_StretchRect(p->dev9, surf->surf9, &rc, surf->stage9,
                                        &rc, D3DTEXF_NONE);
    if (FAILED(hr)) {
        MP_ERR(mapper, "Couldn't copy to D3D9 staging texture: %s\n",
               mp_HRESULT_to_str(hr));
        return 0;
    }

    D3DLOCKED_RECT lock;
    hr = IDirect3DSurface9_LockRect(surf->stage9, &lock, ((void*)0), D3DLOCK_READONLY);
    if (FAILED(hr)) {
        MP_ERR(mapper, "Couldn't map D3D9 staging texture: %s\n",
               mp_HRESULT_to_str(hr));
        return 0;
    }

    IDirect3DSurface9_UnlockRect(surf->stage9);
    p->queue[p->queue_pos]->busy11 = 1;
    return 1;
}
