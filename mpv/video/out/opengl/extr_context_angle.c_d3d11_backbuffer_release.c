
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {int d3d11_backbuffer; scalar_t__ egl_backbuffer; int egl_display; } ;


 int EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_SURFACE ;
 int SAFE_RELEASE (int ) ;
 int eglDestroySurface (int ,scalar_t__) ;
 int eglMakeCurrent (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void d3d11_backbuffer_release(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (p->egl_backbuffer) {
        eglMakeCurrent(p->egl_display, EGL_NO_SURFACE, EGL_NO_SURFACE,
                       EGL_NO_CONTEXT);
        eglDestroySurface(p->egl_display, p->egl_backbuffer);
    }
    p->egl_backbuffer = EGL_NO_SURFACE;

    SAFE_RELEASE(p->d3d11_backbuffer);
}
