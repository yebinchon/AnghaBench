
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_priv {struct mpv_render_context* ctx; } ;
struct vo {struct vo_priv* priv; } ;
struct timespec {int dummy; } ;
struct mpv_render_context {int present_count; scalar_t__ expected_flip_count; scalar_t__ flip_count; int lock; int video_wait; int * next_frame; int * cur_frame; scalar_t__ redrawing; } ;


 int MP_VERBOSE (struct vo*,char*) ;
 struct timespec mp_rel_time_to_timespec (double) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_signal (int *) ;
 scalar_t__ pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int talloc_free (int *) ;
 int vo_increment_drop_count (struct vo*,int) ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    struct vo_priv *p = vo->priv;
    struct mpv_render_context *ctx = p->ctx;
    struct timespec ts = mp_rel_time_to_timespec(0.2);

    pthread_mutex_lock(&ctx->lock);


    while (ctx->next_frame) {
        if (pthread_cond_timedwait(&ctx->video_wait, &ctx->lock, &ts)) {
            if (ctx->next_frame) {
                MP_VERBOSE(vo, "mpv_render_context_render() not being called "
                           "or stuck.\n");
                goto done;
            }
        }
    }


    ctx->present_count += 1;
    pthread_cond_broadcast(&ctx->video_wait);

    if (ctx->redrawing)
        goto done;


    while (ctx->expected_flip_count > ctx->flip_count) {


        if (!ctx->flip_count)
            break;
        if (pthread_cond_timedwait(&ctx->video_wait, &ctx->lock, &ts)) {
            MP_VERBOSE(vo, "mpv_render_report_swap() not being called.\n");
            goto done;
        }
    }

done:


    if (ctx->next_frame) {
        talloc_free(ctx->cur_frame);
        ctx->cur_frame = ctx->next_frame;
        ctx->next_frame = ((void*)0);
        ctx->present_count += 2;
        pthread_cond_signal(&ctx->video_wait);
        vo_increment_drop_count(vo, 1);
    }

    pthread_mutex_unlock(&ctx->lock);
}
