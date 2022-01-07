
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {scalar_t__ egl_context; int egl_display; } ;


 scalar_t__ EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int eglDestroyContext (int ,scalar_t__) ;
 int eglMakeCurrent (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void context_destroy(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    if (p->egl_context) {
        eglMakeCurrent(p->egl_display, EGL_NO_SURFACE, EGL_NO_SURFACE,
                       EGL_NO_CONTEXT);
        eglDestroyContext(p->egl_display, p->egl_context);
    }
    p->egl_context = EGL_NO_CONTEXT;
}
