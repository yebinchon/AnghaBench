
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_ctx {TYPE_2__* vo; struct priv* priv; } ;
struct priv {scalar_t__ XGetSyncValues; } ;
struct TYPE_4__ {TYPE_1__* x11; } ;
struct TYPE_3__ {int window; int display; } ;


 int glXSwapBuffers (int ,int ) ;
 int update_vsync_oml (struct ra_ctx*) ;

__attribute__((used)) static void glx_swap_buffers(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    glXSwapBuffers(ctx->vo->x11->display, ctx->vo->x11->window);

    if (p->XGetSyncValues)
        update_vsync_oml(ctx);
}
