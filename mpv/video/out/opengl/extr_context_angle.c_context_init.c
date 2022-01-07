
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dummy; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int egl_config; int egl_context; int egl_display; } ;


 int EGL_EXTENSIONS ;
 int MP_DBG (struct vo*,char*,char const*) ;
 int MP_FATAL (struct vo*,char*) ;
 int context_destroy (struct ra_ctx*) ;
 int eglInitialize (int ,int *,int *) ;
 char* eglQueryString (int ,int ) ;
 int mpegl_create_context (struct ra_ctx*,int ,int *,int *) ;

__attribute__((used)) static bool context_init(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;

    if (!eglInitialize(p->egl_display, ((void*)0), ((void*)0))) {
        MP_FATAL(vo, "Couldn't initialize EGL\n");
        goto fail;
    }

    const char *exts = eglQueryString(p->egl_display, EGL_EXTENSIONS);
    if (exts)
        MP_DBG(vo, "EGL extensions: %s\n", exts);

    if (!mpegl_create_context(ctx, p->egl_display, &p->egl_context,
                              &p->egl_config))
    {
        MP_FATAL(vo, "Could not create EGL context!\n");
        goto fail;
    }

    return 1;
fail:
    context_destroy(ctx);
    return 0;
}
