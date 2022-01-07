
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {int egl_display; scalar_t__ egl_context; } ;


 scalar_t__ EGL_NO_CONTEXT ;
 int EGL_NO_DISPLAY ;
 int destroy_dispmanx (struct ra_ctx*) ;
 int eglDestroyContext (int ,scalar_t__) ;
 int eglReleaseThread () ;
 int ra_gl_ctx_uninit (struct ra_ctx*) ;
 int tv_callback ;
 int vc_tv_unregister_callback_full (int ,struct ra_ctx*) ;

__attribute__((used)) static void rpi_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    ra_gl_ctx_uninit(ctx);

    vc_tv_unregister_callback_full(tv_callback, ctx);

    destroy_dispmanx(ctx);

    if (p->egl_context)
        eglDestroyContext(p->egl_display, p->egl_context);
    p->egl_context = EGL_NO_CONTEXT;
    eglReleaseThread();
    p->egl_display = EGL_NO_DISPLAY;
}
