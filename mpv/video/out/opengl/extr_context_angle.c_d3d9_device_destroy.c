
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {scalar_t__ egl_display; } ;


 scalar_t__ EGL_NO_DISPLAY ;
 int eglTerminate (scalar_t__) ;

__attribute__((used)) static void d3d9_device_destroy(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (p->egl_display)
        eglTerminate(p->egl_display);
    p->egl_display = EGL_NO_DISPLAY;
}
