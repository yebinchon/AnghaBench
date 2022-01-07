
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_frame {int display_synced; } ;
struct ra_swapchain {int dummy; } ;
struct priv {TYPE_1__* ra_ctx; } ;
struct libmpv_gpu_context {struct priv* priv; } ;
struct TYPE_2__ {struct ra_swapchain* swapchain; } ;


 int ra_gl_ctx_submit_frame (struct ra_swapchain*,struct vo_frame*) ;

__attribute__((used)) static void done_frame(struct libmpv_gpu_context *ctx, bool ds)
{
    struct priv *p = ctx->priv;

    struct ra_swapchain *sw = p->ra_ctx->swapchain;
    struct vo_frame dummy = {.display_synced = ds};
    ra_gl_ctx_submit_frame(sw, &dummy);
}
