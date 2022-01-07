
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
struct priv_owner {int device_h; int device; } ;
struct priv {int texture; int rtarget_h; int device_h; int rtarget; int device; } ;
struct TYPE_7__ {int (* DXLockObjectsNV ) (int ,int,int *) ;int (* DXRegisterObjectNV ) (int ,int ,int ,int ,int ) ;int (* BindTexture ) (int ,int ) ;int (* TexParameteri ) (int ,int ,int ) ;int (* GenTextures ) (int,int *) ;int (* DXSetResourceShareHandleNV ) (int ,int *) ;} ;
struct TYPE_5__ {struct priv_owner* priv; } ;
typedef int HRESULT ;
typedef int * HANDLE ;
typedef TYPE_3__ GL ;


 int D3DMULTISAMPLE_NONE ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GL_CLAMP_TO_EDGE ;
 int GL_LINEAR ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int IDirect3DDevice9Ex_CreateRenderTarget (int ,int ,int ,int ,int ,int ,int ,int *,int **) ;
 int IMGFMT_RGB0 ;
 int MP_ERR (struct ra_hwdec_mapper*,char*,int ) ;
 int SHARED_SURFACE_D3DFMT ;
 int WGL_ACCESS_READ_ONLY_NV ;
 int mp_HRESULT_to_str (int ) ;
 int mp_LastError_to_str () ;
 int ra_create_wrapped_tex (int ,struct ra_tex_params*,int ) ;
 int ra_find_unorm_format (int ,int,int) ;
 TYPE_3__* ra_gl_get (int ) ;
 int stub1 (int ,int *) ;
 int stub10 (int ,int,int *) ;
 int stub2 (int,int *) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ) ;
 int stub7 (int ,int ,int ) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int mapper_init(struct ra_hwdec_mapper *mapper)
{
    struct priv_owner *p_owner = mapper->owner->priv;
    struct priv *p = mapper->priv;
    GL *gl = ra_gl_get(mapper->ra);
    HRESULT hr;

    p->device = p_owner->device;
    p->device_h = p_owner->device_h;

    HANDLE share_handle = ((void*)0);
    hr = IDirect3DDevice9Ex_CreateRenderTarget(
        p->device,
        mapper->src_params.w, mapper->src_params.h,
        SHARED_SURFACE_D3DFMT, D3DMULTISAMPLE_NONE, 0, FALSE,
        &p->rtarget, &share_handle);
    if (FAILED(hr)) {
        MP_ERR(mapper, "Failed creating offscreen Direct3D surface: %s\n",
               mp_HRESULT_to_str(hr));
        return -1;
    }

    if (share_handle &&
        !gl->DXSetResourceShareHandleNV(p->rtarget, share_handle)) {
        MP_ERR(mapper, "Failed setting Direct3D/OpenGL share handle for surface: %s\n",
               mp_LastError_to_str());
        return -1;
    }

    gl->GenTextures(1, &p->texture);
    gl->BindTexture(GL_TEXTURE_2D, p->texture);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    gl->BindTexture(GL_TEXTURE_2D, 0);

    p->rtarget_h = gl->DXRegisterObjectNV(p->device_h, p->rtarget, p->texture,
                                          GL_TEXTURE_2D,
                                          WGL_ACCESS_READ_ONLY_NV);
    if (!p->rtarget_h) {
        MP_ERR(mapper, "Failed to register Direct3D surface with OpenGL: %s\n",
               mp_LastError_to_str());
        return -1;
    }

    if (!gl->DXLockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
        MP_ERR(mapper, "Failed locking texture for access by OpenGL %s\n",
               mp_LastError_to_str());
        return -1;
    }

    struct ra_tex_params params = {
        .dimensions = 2,
        .w = mapper->src_params.w,
        .h = mapper->src_params.h,
        .d = 1,
        .format = ra_find_unorm_format(mapper->ra, 1, 4),
        .render_src = 1,
        .src_linear = 1,
    };
    if (!params.format)
        return -1;

    mapper->tex[0] = ra_create_wrapped_tex(mapper->ra, &params, p->texture);
    if (!mapper->tex[0])
        return -1;

    mapper->dst_params = mapper->src_params;
    mapper->dst_params.imgfmt = IMGFMT_RGB0;
    mapper->dst_params.hw_subfmt = 0;

    return 0;
}
