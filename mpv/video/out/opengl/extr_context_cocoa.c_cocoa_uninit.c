
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {int ctx; } ;


 int CGLReleaseContext (int ) ;
 int ra_gl_ctx_uninit (struct ra_ctx*) ;
 int vo_cocoa_uninit (int ) ;

__attribute__((used)) static void cocoa_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    ra_gl_ctx_uninit(ctx);
    CGLReleaseContext(p->ctx);
    vo_cocoa_uninit(ctx->vo);
}
