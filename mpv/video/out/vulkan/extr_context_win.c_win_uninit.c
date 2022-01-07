
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {int vk; } ;


 int mpvk_uninit (int *) ;
 int ra_vk_ctx_uninit (struct ra_ctx*) ;
 int vo_w32_uninit (int ) ;

__attribute__((used)) static void win_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    ra_vk_ctx_uninit(ctx);
    mpvk_uninit(&p->vk);
    vo_w32_uninit(ctx->vo);
}
