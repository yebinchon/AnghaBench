
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_ctx {TYPE_2__* ra; int vo; struct priv* priv; } ;
struct priv {int device; int swapchain; int backbuffer; } ;
struct TYPE_5__ {TYPE_1__* fns; } ;
struct TYPE_4__ {int (* destroy ) (TYPE_2__*) ;} ;


 int SAFE_RELEASE (int ) ;
 int ra_tex_free (TYPE_2__*,int *) ;
 int stub1 (TYPE_2__*) ;
 int vo_w32_uninit (int ) ;

__attribute__((used)) static void d3d11_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (ctx->ra)
        ra_tex_free(ctx->ra, &p->backbuffer);
    SAFE_RELEASE(p->swapchain);
    vo_w32_uninit(ctx->vo);
    SAFE_RELEASE(p->device);



    if (ctx->ra)
        ctx->ra->fns->destroy(ctx->ra);
}
