
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int log; TYPE_1__* opts; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int egl_display; int egl_device; int d3d11_device; int d3d11_context; struct angle_opts* opts; } ;
struct d3d11_device_opts {int allow_warp; int force_warp; int max_frame_latency; int min_feature_level; int max_feature_level; } ;
struct angle_opts {int d3d11_warp; int d3d11_feature_level; } ;
struct TYPE_2__ {int swapchain_depth; } ;
typedef int (* PFNEGLGETPLATFORMDISPLAYEXTPROC ) (int ,int ,int *) ;
typedef int (* PFNEGLCREATEDEVICEANGLEPROC ) (int ,int ,int *) ;


 int D3D_FEATURE_LEVEL_9_3 ;
 int EGL_D3D11_DEVICE_ANGLE ;
 int EGL_PLATFORM_DEVICE_EXT ;
 int ID3D11Device_GetImmediateContext (int ,int *) ;
 int MP_FATAL (struct vo*,char*) ;
 int eglGetProcAddress (char*) ;
 int mp_d3d11_create_present_device (int ,struct d3d11_device_opts*,int *) ;

__attribute__((used)) static bool d3d11_device_create(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;
    struct angle_opts *o = p->opts;

    struct d3d11_device_opts device_opts = {
        .allow_warp = o->d3d11_warp != 0,
        .force_warp = o->d3d11_warp == 1,
        .max_feature_level = o->d3d11_feature_level,
        .min_feature_level = D3D_FEATURE_LEVEL_9_3,
        .max_frame_latency = ctx->vo->opts->swapchain_depth,
    };
    if (!mp_d3d11_create_present_device(vo->log, &device_opts, &p->d3d11_device))
        return 0;
    ID3D11Device_GetImmediateContext(p->d3d11_device, &p->d3d11_context);

    PFNEGLGETPLATFORMDISPLAYEXTPROC eglGetPlatformDisplayEXT =
        (PFNEGLGETPLATFORMDISPLAYEXTPROC)eglGetProcAddress("eglGetPlatformDisplayEXT");
    if (!eglGetPlatformDisplayEXT) {
        MP_FATAL(vo, "Missing EGL_EXT_platform_base\n");
        return 0;
    }
    PFNEGLCREATEDEVICEANGLEPROC eglCreateDeviceANGLE =
        (PFNEGLCREATEDEVICEANGLEPROC)eglGetProcAddress("eglCreateDeviceANGLE");
    if (!eglCreateDeviceANGLE) {
        MP_FATAL(vo, "Missing EGL_EXT_platform_device\n");
        return 0;
    }

    p->egl_device = eglCreateDeviceANGLE(EGL_D3D11_DEVICE_ANGLE,
        p->d3d11_device, ((void*)0));
    if (!p->egl_device) {
        MP_FATAL(vo, "Couldn't create EGL device\n");
        return 0;
    }

    p->egl_display = eglGetPlatformDisplayEXT(EGL_PLATFORM_DEVICE_EXT,
        p->egl_device, ((void*)0));
    if (!p->egl_display) {
        MP_FATAL(vo, "Couldn't get EGL display\n");
        return 0;
    }

    return 1;
}
