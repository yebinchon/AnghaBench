
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {scalar_t__ egl_context; int egl_display; scalar_t__ egl_surface; } ;


 int EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int eglDestroyContext (int ,scalar_t__) ;
 int eglDestroySurface (int ,scalar_t__) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int ra_gl_ctx_uninit (struct ra_ctx*) ;
 int vo_android_uninit (int ) ;

__attribute__((used)) static void android_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    ra_gl_ctx_uninit(ctx);

    if (p->egl_surface) {
        eglMakeCurrent(p->egl_display, EGL_NO_SURFACE, EGL_NO_SURFACE,
                       EGL_NO_CONTEXT);
        eglDestroySurface(p->egl_display, p->egl_surface);
    }
    if (p->egl_context)
        eglDestroyContext(p->egl_display, p->egl_context);

    vo_android_uninit(ctx->vo);
}
