
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_priv {struct mpv_render_context* ctx; } ;
struct vo {struct vo_priv* priv; } ;
struct mp_image_params {int dummy; } ;
struct mpv_render_context {int need_reconfig; int need_resize; int lock; struct mp_image_params img_params; } ;


 int VOCTRL_RECONFIG ;
 int control (struct vo*,int ,int *) ;
 int forget_frames (struct mpv_render_context*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int reconfig(struct vo *vo, struct mp_image_params *params)
{
    struct vo_priv *p = vo->priv;
    struct mpv_render_context *ctx = p->ctx;

    pthread_mutex_lock(&ctx->lock);
    forget_frames(ctx, 1);
    ctx->img_params = *params;
    ctx->need_reconfig = 1;
    ctx->need_resize = 1;
    pthread_mutex_unlock(&ctx->lock);

    control(vo, VOCTRL_RECONFIG, ((void*)0));

    return 0;
}
