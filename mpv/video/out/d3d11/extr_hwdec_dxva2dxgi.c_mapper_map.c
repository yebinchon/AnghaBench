
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_hwdec_mapper {int * tex; TYPE_1__* src; struct priv* priv; } ;
struct queue_surf {int tex; int surf9; } ;
struct priv {int dev9; } ;
struct TYPE_6__ {int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_5__ {scalar_t__* planes; int h; int w; } ;
typedef TYPE_2__ RECT ;
typedef int IDirect3DSurface9 ;
typedef int HRESULT ;


 int D3DTEXF_NONE ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9Ex_StretchRect (int ,int *,TYPE_2__*,int ,TYPE_2__*,int ) ;
 int MP_ERR (struct ra_hwdec_mapper*,char*,int ) ;
 int mp_HRESULT_to_str (int ) ;
 struct queue_surf* surf_acquire (struct ra_hwdec_mapper*) ;
 int surf_wait_idle9 (struct ra_hwdec_mapper*,struct queue_surf*) ;

__attribute__((used)) static int mapper_map(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    HRESULT hr;

    struct queue_surf *surf = surf_acquire(mapper);
    if (!surf)
        return -1;

    RECT rc = {0, 0, mapper->src->w, mapper->src->h};
    IDirect3DSurface9* hw_surface = (IDirect3DSurface9 *)mapper->src->planes[3];

    hr = IDirect3DDevice9Ex_StretchRect(p->dev9, hw_surface, &rc, surf->surf9,
                                        &rc, D3DTEXF_NONE);
    if (FAILED(hr)) {
        MP_ERR(mapper, "StretchRect() failed: %s\n", mp_HRESULT_to_str(hr));
        return -1;
    }

    if (!surf_wait_idle9(mapper, surf))
        return -1;

    mapper->tex[0] = surf->tex;
    return 0;
}
