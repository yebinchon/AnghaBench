
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ra_hwdec_mapper {TYPE_1__* src; int ra; struct priv* priv; } ;
struct priv {int rtarget_h; int device_h; int rtarget; int device; } ;
struct TYPE_9__ {int (* DXLockObjectsNV ) (int ,int,int *) ;int (* DXUnlockObjectsNV ) (int ,int,int *) ;} ;
struct TYPE_8__ {int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_7__ {int h; int w; scalar_t__* planes; } ;
typedef TYPE_2__ RECT ;
typedef int IDirect3DSurface9 ;
typedef int HRESULT ;
typedef TYPE_3__ GL ;


 int D3DTEXF_NONE ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9Ex_StretchRect (int ,int *,TYPE_2__*,int ,TYPE_2__*,int ) ;
 int MP_ERR (struct ra_hwdec_mapper*,char*,int ) ;
 int mp_HRESULT_to_str (int ) ;
 int mp_LastError_to_str () ;
 TYPE_3__* ra_gl_get (int ) ;
 int stub1 (int ,int,int *) ;
 int stub2 (int ,int,int *) ;

__attribute__((used)) static int mapper_map(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = ra_gl_get(mapper->ra);
    HRESULT hr;

    if (!gl->DXUnlockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
        MP_ERR(mapper, "Failed unlocking texture for access by OpenGL: %s\n",
               mp_LastError_to_str());
        return -1;
    }

    IDirect3DSurface9* hw_surface = (IDirect3DSurface9 *)mapper->src->planes[3];
    RECT rc = {0, 0, mapper->src->w, mapper->src->h};
    hr = IDirect3DDevice9Ex_StretchRect(p->device,
                                        hw_surface, &rc,
                                        p->rtarget, &rc,
                                        D3DTEXF_NONE);
    if (FAILED(hr)) {
        MP_ERR(mapper, "Direct3D RGB conversion failed: %s", mp_HRESULT_to_str(hr));
        return -1;
    }

    if (!gl->DXLockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
        MP_ERR(mapper, "Failed locking texture for access by OpenGL: %s\n",
               mp_LastError_to_str());
        return -1;
    }

    return 0;
}
