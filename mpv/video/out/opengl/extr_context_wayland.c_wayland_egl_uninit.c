
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {int egl_display; int * egl_context; int egl_surface; scalar_t__ egl_window; } ;


 int EGL_NO_CONTEXT ;
 int eglDestroyContext (int ,int *) ;
 int eglDestroySurface (int ,int ) ;
 int eglMakeCurrent (int ,int *,int *,int ) ;
 int eglReleaseThread () ;
 int eglTerminate (int ) ;
 int ra_gl_ctx_uninit (struct ra_ctx*) ;
 int vo_wayland_uninit (int ) ;
 int wl_egl_window_destroy (scalar_t__) ;

__attribute__((used)) static void wayland_egl_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    ra_gl_ctx_uninit(ctx);

    if (p->egl_context) {
        eglReleaseThread();
        if (p->egl_window)
            wl_egl_window_destroy(p->egl_window);
        eglDestroySurface(p->egl_display, p->egl_surface);
        eglMakeCurrent(p->egl_display, ((void*)0), ((void*)0), EGL_NO_CONTEXT);
        eglDestroyContext(p->egl_display, p->egl_context);
        p->egl_context = ((void*)0);
    }
    eglTerminate(p->egl_display);

    vo_wayland_uninit(ctx->vo);
}
