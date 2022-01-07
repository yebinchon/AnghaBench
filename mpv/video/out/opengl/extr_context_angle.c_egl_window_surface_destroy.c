
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {int egl_display; scalar_t__ egl_window; } ;


 int EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int eglMakeCurrent (int ,int ,int ,int ) ;

__attribute__((used)) static void egl_window_surface_destroy(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    if (p->egl_window) {
        eglMakeCurrent(p->egl_display, EGL_NO_SURFACE, EGL_NO_SURFACE,
                       EGL_NO_CONTEXT);
    }
}
