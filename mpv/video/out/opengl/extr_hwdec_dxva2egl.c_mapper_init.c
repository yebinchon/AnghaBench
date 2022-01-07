
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_tex_params {int dimensions; int d; int render_src; int src_linear; int format; int h; int w; } ;
struct TYPE_6__ {scalar_t__ hw_subfmt; int imgfmt; int h; int w; } ;
struct ra_hwdec_mapper {TYPE_2__ dst_params; TYPE_2__ src_params; int * tex; int ra; struct priv* priv; TYPE_1__* owner; } ;
struct priv_owner {scalar_t__ alpha; int egl_config; int egl_display; int device9ex; } ;
struct priv {scalar_t__ egl_surface; int gl_texture; int egl_display; int surface9; int texture9; int device9ex; int query9; } ;
struct TYPE_7__ {int (* BindTexture ) (int ,int ) ;int (* TexParameteri ) (int ,int ,int ) ;int (* GenTextures ) (int,int *) ;} ;
struct TYPE_5__ {struct priv_owner* priv; } ;
typedef int HRESULT ;
typedef int * HANDLE ;
typedef TYPE_3__ GL ;
typedef int EGLint ;


 int D3DFMT_A8R8G8B8 ;
 int D3DFMT_X8R8G8B8 ;
 int D3DISSUE_END ;
 int D3DPOOL_DEFAULT ;
 int D3DQUERYTYPE_EVENT ;
 int D3DUSAGE_RENDERTARGET ;
 int EGL_D3D_TEXTURE_2D_SHARE_HANDLE_ANGLE ;
 int EGL_HEIGHT ;
 int EGL_NONE ;
 scalar_t__ EGL_NO_SURFACE ;
 int EGL_TEXTURE_2D ;
 int EGL_TEXTURE_FORMAT ;
 int EGL_TEXTURE_RGB ;
 int EGL_TEXTURE_RGBA ;
 int EGL_TEXTURE_TARGET ;
 int EGL_WIDTH ;
 scalar_t__ FAILED (int ) ;
 int GL_CLAMP_TO_EDGE ;
 int GL_LINEAR ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int IDirect3DDevice9Ex_CreateTexture (int ,int ,int ,int,int ,int ,int ,int *,int **) ;
 int IDirect3DDevice9_CreateQuery (int ,int ,int *) ;
 int IDirect3DQuery9_Issue (int ,int ) ;
 int IDirect3DTexture9_GetSurfaceLevel (int ,int ,int *) ;
 int IMGFMT_RGB0 ;
 int MP_ERR (struct ra_hwdec_mapper*,char*,...) ;
 int MP_FATAL (struct ra_hwdec_mapper*,char*,int ) ;
 scalar_t__ eglCreatePbufferFromClientBuffer (int ,int ,int *,int ,int *) ;
 int mp_HRESULT_to_str (int ) ;
 int ra_create_wrapped_tex (int ,struct ra_tex_params*,int ) ;
 int ra_find_unorm_format (int ,int,int) ;
 TYPE_3__* ra_gl_get (int ) ;
 int stub1 (int,int *) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ,int ,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ) ;
 int stub7 (int ,int ) ;

__attribute__((used)) static int mapper_init(struct ra_hwdec_mapper *mapper)
{
    struct priv_owner *p_owner = mapper->owner->priv;
    struct priv *p = mapper->priv;
    GL *gl = ra_gl_get(mapper->ra);
    HRESULT hr;

    p->device9ex = p_owner->device9ex;
    p->egl_display = p_owner->egl_display;

    hr = IDirect3DDevice9_CreateQuery(p->device9ex, D3DQUERYTYPE_EVENT,
                                      &p->query9);
    if (FAILED(hr)) {
        MP_FATAL(mapper, "Failed to create Direct3D query interface: %s\n",
                 mp_HRESULT_to_str(hr));
        goto fail;
    }


    hr = IDirect3DQuery9_Issue(p->query9, D3DISSUE_END);
    if (FAILED(hr)) {
        MP_FATAL(mapper, "Failed to issue Direct3D END test query: %s\n",
                 mp_HRESULT_to_str(hr));
        goto fail;
    }

    HANDLE share_handle = ((void*)0);
    hr = IDirect3DDevice9Ex_CreateTexture(p->device9ex,
                                          mapper->src_params.w,
                                          mapper->src_params.h,
                                          1, D3DUSAGE_RENDERTARGET,
                                          p_owner->alpha ?
                                            D3DFMT_A8R8G8B8 : D3DFMT_X8R8G8B8,
                                          D3DPOOL_DEFAULT,
                                          &p->texture9,
                                          &share_handle);
    if (FAILED(hr)) {
        MP_ERR(mapper, "Failed to create Direct3D9 texture: %s\n",
               mp_HRESULT_to_str(hr));
        goto fail;
    }

    hr = IDirect3DTexture9_GetSurfaceLevel(p->texture9, 0, &p->surface9);
    if (FAILED(hr)) {
        MP_ERR(mapper, "Failed to get Direct3D9 surface from texture: %s\n",
               mp_HRESULT_to_str(hr));
        goto fail;
    }

    EGLint attrib_list[] = {
        EGL_WIDTH, mapper->src_params.w,
        EGL_HEIGHT, mapper->src_params.h,
        EGL_TEXTURE_FORMAT, p_owner->alpha ? EGL_TEXTURE_RGBA : EGL_TEXTURE_RGB,
        EGL_TEXTURE_TARGET, EGL_TEXTURE_2D,
        EGL_NONE
    };
    p->egl_surface = eglCreatePbufferFromClientBuffer(
        p->egl_display, EGL_D3D_TEXTURE_2D_SHARE_HANDLE_ANGLE,
        share_handle, p_owner->egl_config, attrib_list);
    if (p->egl_surface == EGL_NO_SURFACE) {
        MP_ERR(mapper, "Failed to create EGL surface\n");
        goto fail;
    }

    gl->GenTextures(1, &p->gl_texture);
    gl->BindTexture(GL_TEXTURE_2D, p->gl_texture);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    gl->BindTexture(GL_TEXTURE_2D, 0);

    struct ra_tex_params params = {
        .dimensions = 2,
        .w = mapper->src_params.w,
        .h = mapper->src_params.h,
        .d = 1,
        .format = ra_find_unorm_format(mapper->ra, 1, p_owner->alpha ? 4 : 3),
        .render_src = 1,
        .src_linear = 1,
    };
    if (!params.format)
        goto fail;

    mapper->tex[0] = ra_create_wrapped_tex(mapper->ra, &params, p->gl_texture);
    if (!mapper->tex[0])
        goto fail;

    mapper->dst_params = mapper->src_params;
    mapper->dst_params.imgfmt = IMGFMT_RGB0;
    mapper->dst_params.hw_subfmt = 0;
    return 0;
fail:
    return -1;
}
