
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {scalar_t__ egl_context; int egl_display; } ;


 scalar_t__ EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int eglDestroyContext (int ,scalar_t__) ;
 int eglMakeCurrent (int ,int ,int ,scalar_t__) ;
 int ra_gl_ctx_uninit (struct ra_ctx*) ;
 int vo_x11_uninit (int ) ;

__attribute__((used)) static void mpegl_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    ra_gl_ctx_uninit(ctx);

    if (p->egl_context) {
        eglMakeCurrent(p->egl_display, EGL_NO_SURFACE, EGL_NO_SURFACE,
                       EGL_NO_CONTEXT);
        eglDestroyContext(p->egl_display, p->egl_context);
    }
    p->egl_context = EGL_NO_CONTEXT;
    vo_x11_uninit(ctx->vo);
}
