
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voctrl_screenshot {int dummy; } ;
struct vo_frame {int dummy; } ;
struct render_backend {struct priv* priv; } ;
struct priv {int renderer; } ;


 int gl_video_screenshot (int ,struct vo_frame*,struct voctrl_screenshot*) ;

__attribute__((used)) static void screenshot(struct render_backend *ctx, struct vo_frame *frame,
                       struct voctrl_screenshot *args)
{
    struct priv *p = ctx->priv;

    gl_video_screenshot(p->renderer, frame, args);
}
