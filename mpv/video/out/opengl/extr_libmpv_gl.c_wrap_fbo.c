
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_tex {int dummy; } ;
struct ra_swapchain {int dummy; } ;
struct ra_fbo {struct ra_tex* tex; } ;
struct priv {TYPE_2__* ra_ctx; TYPE_1__* gl; } ;
struct libmpv_gpu_context {struct priv* priv; } ;
typedef int mpv_render_param ;
struct TYPE_7__ {int fbo; int h; int w; } ;
typedef TYPE_3__ mpv_opengl_fbo ;
struct TYPE_6__ {struct ra_swapchain* swapchain; } ;
struct TYPE_5__ {int mpgl_caps; } ;


 int MPGL_CAP_FB ;
 int MPV_ERROR_INVALID_PARAMETER ;
 int MPV_ERROR_UNSUPPORTED ;
 int MPV_RENDER_PARAM_OPENGL_FBO ;
 int MP_FATAL (struct libmpv_gpu_context*,char*) ;
 TYPE_3__* get_mpv_render_param (int *,int ,int *) ;
 int ra_gl_ctx_resize (struct ra_swapchain*,int ,int ,int ) ;
 int ra_gl_ctx_start_frame (struct ra_swapchain*,struct ra_fbo*) ;

__attribute__((used)) static int wrap_fbo(struct libmpv_gpu_context *ctx, mpv_render_param *params,
                    struct ra_tex **out)
{
    struct priv *p = ctx->priv;

    mpv_opengl_fbo *fbo =
        get_mpv_render_param(params, MPV_RENDER_PARAM_OPENGL_FBO, ((void*)0));
    if (!fbo)
        return MPV_ERROR_INVALID_PARAMETER;

    if (fbo->fbo && !(p->gl->mpgl_caps & MPGL_CAP_FB)) {
        MP_FATAL(ctx, "Rendering to FBO requested, but no FBO extension found!\n");
        return MPV_ERROR_UNSUPPORTED;
    }

    struct ra_swapchain *sw = p->ra_ctx->swapchain;
    struct ra_fbo target;
    ra_gl_ctx_resize(sw, fbo->w, fbo->h, fbo->fbo);
    ra_gl_ctx_start_frame(sw, &target);
    *out = target.tex;
    return 0;
}
