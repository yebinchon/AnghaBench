
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dummy; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {scalar_t__ egl_display; } ;
typedef scalar_t__ (* PFNEGLGETPLATFORMDISPLAYEXTPROC ) (int ,int ,int *) ;
typedef int EGLint ;


 int EGL_DEFAULT_DISPLAY ;
 int EGL_NONE ;
 scalar_t__ EGL_NO_DISPLAY ;
 int EGL_PLATFORM_ANGLE_ANGLE ;
 int EGL_PLATFORM_ANGLE_DEVICE_TYPE_ANGLE ;
 int EGL_PLATFORM_ANGLE_DEVICE_TYPE_HARDWARE_ANGLE ;
 int EGL_PLATFORM_ANGLE_TYPE_ANGLE ;
 int EGL_PLATFORM_ANGLE_TYPE_D3D9_ANGLE ;
 int MP_FATAL (struct vo*,char*) ;
 int eglGetProcAddress (char*) ;

__attribute__((used)) static bool d3d9_device_create(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;

    PFNEGLGETPLATFORMDISPLAYEXTPROC eglGetPlatformDisplayEXT =
        (PFNEGLGETPLATFORMDISPLAYEXTPROC)eglGetProcAddress("eglGetPlatformDisplayEXT");
    if (!eglGetPlatformDisplayEXT) {
        MP_FATAL(vo, "Missing EGL_EXT_platform_base\n");
        return 0;
    }

    EGLint display_attributes[] = {
        EGL_PLATFORM_ANGLE_TYPE_ANGLE,
            EGL_PLATFORM_ANGLE_TYPE_D3D9_ANGLE,
        EGL_PLATFORM_ANGLE_DEVICE_TYPE_ANGLE,
            EGL_PLATFORM_ANGLE_DEVICE_TYPE_HARDWARE_ANGLE,
        EGL_NONE,
    };
    p->egl_display = eglGetPlatformDisplayEXT(EGL_PLATFORM_ANGLE_ANGLE,
        EGL_DEFAULT_DISPLAY, display_attributes);
    if (p->egl_display == EGL_NO_DISPLAY) {
        MP_FATAL(vo, "Couldn't get display\n");
        return 0;
    }

    return 1;
}
