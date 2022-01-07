
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {scalar_t__ ra; TYPE_1__* swapchain; } ;
struct priv {scalar_t__ wrapped_fb; } ;
struct TYPE_2__ {struct priv* priv; } ;


 int ra_free (scalar_t__*) ;
 int ra_tex_free (scalar_t__,scalar_t__*) ;
 int talloc_free (TYPE_1__*) ;

void ra_gl_ctx_uninit(struct ra_ctx *ctx)
{
    if (ctx->swapchain) {
        struct priv *p = ctx->swapchain->priv;
        if (ctx->ra && p->wrapped_fb)
            ra_tex_free(ctx->ra, &p->wrapped_fb);
        talloc_free(ctx->swapchain);
        ctx->swapchain = ((void*)0);
    }

    ra_free(&ctx->ra);
}
