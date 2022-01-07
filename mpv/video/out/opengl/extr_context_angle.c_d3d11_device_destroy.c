
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {int d3d11_device; scalar_t__ egl_device; scalar_t__ egl_display; } ;
typedef int (* PFNEGLRELEASEDEVICEANGLEPROC ) (scalar_t__) ;


 scalar_t__ EGL_NO_DISPLAY ;
 int SAFE_RELEASE (int ) ;
 int eglGetProcAddress (char*) ;
 int eglTerminate (scalar_t__) ;

__attribute__((used)) static void d3d11_device_destroy(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    PFNEGLRELEASEDEVICEANGLEPROC eglReleaseDeviceANGLE =
        (PFNEGLRELEASEDEVICEANGLEPROC)eglGetProcAddress("eglReleaseDeviceANGLE");

    if (p->egl_display)
        eglTerminate(p->egl_display);
    p->egl_display = EGL_NO_DISPLAY;

    if (p->egl_device && eglReleaseDeviceANGLE)
        eglReleaseDeviceANGLE(p->egl_device);
    p->egl_device = 0;

    SAFE_RELEASE(p->d3d11_device);
}
