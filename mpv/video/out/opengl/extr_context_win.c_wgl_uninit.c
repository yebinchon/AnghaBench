
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {int hdc; scalar_t__ context; } ;


 int DwmEnableMMCSS (int ) ;
 int FALSE ;
 int destroy_gl ;
 int ra_gl_ctx_uninit (struct ra_ctx*) ;
 int vo_w32_run_on_thread (int ,int ,struct ra_ctx*) ;
 int vo_w32_uninit (int ) ;
 int wglMakeCurrent (int ,int ) ;

__attribute__((used)) static void wgl_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    ra_gl_ctx_uninit(ctx);
    if (p->context)
        wglMakeCurrent(p->hdc, 0);
    vo_w32_run_on_thread(ctx->vo, destroy_gl, ctx);

    DwmEnableMMCSS(FALSE);
    vo_w32_uninit(ctx->vo);
}
