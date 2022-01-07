
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_swapchain {struct ra_ctx* ctx; } ;
struct ra_fbo {int dummy; } ;
struct ra_ctx {struct priv* priv; } ;
struct TYPE_4__ {scalar_t__* atomic_request_ptr; } ;
struct priv {TYPE_3__* kms; TYPE_1__ drm_params; } ;
struct TYPE_6__ {TYPE_2__* atomic_context; } ;
struct TYPE_5__ {scalar_t__ request; } ;


 scalar_t__ drmModeAtomicAlloc () ;
 int ra_gl_ctx_start_frame (struct ra_swapchain*,struct ra_fbo*) ;

__attribute__((used)) static bool drm_egl_start_frame(struct ra_swapchain *sw, struct ra_fbo *out_fbo)
{
    struct ra_ctx *ctx = sw->ctx;
    struct priv *p = ctx->priv;

    if (p->kms->atomic_context && !p->kms->atomic_context->request) {
        p->kms->atomic_context->request = drmModeAtomicAlloc();
        p->drm_params.atomic_request_ptr = &p->kms->atomic_context->request;
    }

    return ra_gl_ctx_start_frame(sw, out_fbo);
}
