
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_priv {struct mpv_render_context* ctx; } ;
struct vo_frame {int current; scalar_t__ redraw; } ;
struct vo {struct vo_priv* priv; } ;
struct mpv_render_context {int redrawing; int lock; scalar_t__ flip_count; scalar_t__ expected_flip_count; scalar_t__ next_frame; } ;


 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int update (struct mpv_render_context*) ;
 scalar_t__ vo_frame_ref (struct vo_frame*) ;

__attribute__((used)) static void draw_frame(struct vo *vo, struct vo_frame *frame)
{
    struct vo_priv *p = vo->priv;
    struct mpv_render_context *ctx = p->ctx;

    pthread_mutex_lock(&ctx->lock);
    assert(!ctx->next_frame);
    ctx->next_frame = vo_frame_ref(frame);
    ctx->expected_flip_count = ctx->flip_count + 1;
    ctx->redrawing = frame->redraw || !frame->current;
    pthread_mutex_unlock(&ctx->lock);

    update(ctx);
}
