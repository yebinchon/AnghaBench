
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {TYPE_1__* vo; } ;
struct TYPE_2__ {int dheight; int dwidth; } ;


 int ra_vk_ctx_resize (struct ra_ctx*,int ,int ) ;

__attribute__((used)) static bool resize(struct ra_ctx *ctx)
{
    return ra_vk_ctx_resize(ctx, ctx->vo->dwidth, ctx->vo->dheight);
}
