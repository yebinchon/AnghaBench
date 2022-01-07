
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_frame {int still; } ;
struct ra_swapchain {struct ra_ctx* ctx; } ;
struct ra_ctx {struct priv* priv; } ;
struct priv {int still; } ;


 int ra_gl_ctx_submit_frame (struct ra_swapchain*,struct vo_frame const*) ;

__attribute__((used)) static bool drm_egl_submit_frame(struct ra_swapchain *sw, const struct vo_frame *frame)
{
    struct ra_ctx *ctx = sw->ctx;
    struct priv *p = ctx->priv;

    p->still = frame->still;

    return ra_gl_ctx_submit_frame(sw, frame);
}
