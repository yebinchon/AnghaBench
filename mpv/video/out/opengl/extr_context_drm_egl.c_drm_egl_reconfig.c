
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_ctx {int swapchain; TYPE_1__* vo; struct priv* priv; } ;
struct priv {TYPE_2__* fb; } ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_3__ {int dheight; int dwidth; } ;


 int ra_gl_ctx_resize (int ,int ,int ,int ) ;

__attribute__((used)) static bool drm_egl_reconfig(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    ctx->vo->dwidth = p->fb->width;
    ctx->vo->dheight = p->fb->height;
    ra_gl_ctx_resize(ctx->swapchain, p->fb->width, p->fb->height, 0);
    return 1;
}
