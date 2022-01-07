
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo_frame {int dummy; } ;
struct vo {struct gpu_priv* priv; } ;
struct ra_swapchain {TYPE_2__* fns; } ;
struct ra_fbo {int dummy; } ;
struct gpu_priv {int renderer; TYPE_1__* ctx; } ;
struct TYPE_4__ {int (* submit_frame ) (struct ra_swapchain*,struct vo_frame*) ;int (* start_frame ) (struct ra_swapchain*,struct ra_fbo*) ;} ;
struct TYPE_3__ {struct ra_swapchain* swapchain; } ;


 int MP_ERR (struct vo*,char*) ;
 int RENDER_FRAME_DEF ;
 int gl_video_render_frame (int ,struct vo_frame*,struct ra_fbo,int ) ;
 int stub1 (struct ra_swapchain*,struct ra_fbo*) ;
 int stub2 (struct ra_swapchain*,struct vo_frame*) ;

__attribute__((used)) static void draw_frame(struct vo *vo, struct vo_frame *frame)
{
    struct gpu_priv *p = vo->priv;
    struct ra_swapchain *sw = p->ctx->swapchain;

    struct ra_fbo fbo;
    if (!sw->fns->start_frame(sw, &fbo))
        return;

    gl_video_render_frame(p->renderer, frame, fbo, RENDER_FRAME_DEF);
    if (!sw->fns->submit_frame(sw, frame)) {
        MP_ERR(vo, "Failed presenting frame!\n");
        return;
    }
}
