
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ra_hwdec_mapper {TYPE_1__* src; int ra; struct priv* priv; } ;
struct priv {int egl_surface; int egl_display; int gl_texture; int query9; int surface9; int device9ex; } ;
typedef int int64_t ;
struct TYPE_9__ {int (* BindTexture ) (int ,int ) ;} ;
struct TYPE_8__ {int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_7__ {scalar_t__* planes; int h; int w; } ;
typedef TYPE_2__ RECT ;
typedef int IDirect3DSurface9 ;
typedef scalar_t__ HRESULT ;
typedef TYPE_3__ GL ;


 int D3DGETDATA_FLUSH ;
 int D3DISSUE_END ;
 int D3DTEXF_NONE ;
 int EGL_BACK_BUFFER ;
 scalar_t__ FAILED (scalar_t__) ;
 int GL_TEXTURE_2D ;
 scalar_t__ IDirect3DDevice9Ex_StretchRect (int ,int *,TYPE_2__*,int ,TYPE_2__*,int ) ;
 scalar_t__ IDirect3DQuery9_GetData (int ,int *,int ,int ) ;
 scalar_t__ IDirect3DQuery9_Issue (int ,int ) ;
 int MP_ERR (struct ra_hwdec_mapper*,char*,...) ;
 int MP_VERBOSE (struct ra_hwdec_mapper*,char*,long long) ;
 scalar_t__ S_FALSE ;
 int eglBindTexImage (int ,int ,int ) ;
 int mp_HRESULT_to_str (scalar_t__) ;
 int mp_sleep_us (int const) ;
 TYPE_3__* ra_gl_get (int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static int mapper_map(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = ra_gl_get(mapper->ra);

    HRESULT hr;
    RECT rc = {0, 0, mapper->src->w, mapper->src->h};
    IDirect3DSurface9* hw_surface = (IDirect3DSurface9 *)mapper->src->planes[3];
    hr = IDirect3DDevice9Ex_StretchRect(p->device9ex,
                                        hw_surface, &rc,
                                        p->surface9, &rc,
                                        D3DTEXF_NONE);
    if (FAILED(hr)) {
        MP_ERR(mapper, "Direct3D RGB conversion failed: %s\n",
               mp_HRESULT_to_str(hr));
        return -1;
    }

    hr = IDirect3DQuery9_Issue(p->query9, D3DISSUE_END);
    if (FAILED(hr)) {
        MP_ERR(mapper, "Failed to issue Direct3D END query\n");
        return -1;
    }




    const int max_retries = 8;
    const int64_t wait_us = 1000;
    int retries = 0;
    while (1) {
        hr = IDirect3DQuery9_GetData(p->query9, ((void*)0), 0, D3DGETDATA_FLUSH);
        if (FAILED(hr)) {
            MP_ERR(mapper, "Failed to query Direct3D flush state\n");
            return -1;
        } else if (hr == S_FALSE) {
            if (++retries > max_retries) {
                MP_VERBOSE(mapper, "Failed to flush frame after %lld ms\n",
                           (long long)(wait_us * max_retries) / 1000);
                break;
            }
            mp_sleep_us(wait_us);
        } else {
            break;
        }
    }

    gl->BindTexture(GL_TEXTURE_2D, p->gl_texture);
    eglBindTexImage(p->egl_display, p->egl_surface, EGL_BACK_BUFFER);
    gl->BindTexture(GL_TEXTURE_2D, 0);

    return 0;
}
