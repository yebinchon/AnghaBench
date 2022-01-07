
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {int swapchain; TYPE_1__* vo; } ;
struct TYPE_2__ {int dwidth; int dheight; } ;


 int ra_gl_ctx_resize (int ,int,int,int ) ;
 int vo_android_surface_size (TYPE_1__*,int*,int*) ;

__attribute__((used)) static bool android_reconfig(struct ra_ctx *ctx)
{
    int w, h;
    if (!vo_android_surface_size(ctx->vo, &w, &h))
        return 0;

    ctx->vo->dwidth = w;
    ctx->vo->dheight = h;
    ra_gl_ctx_resize(ctx->swapchain, w, h, 0);
    return 1;
}
