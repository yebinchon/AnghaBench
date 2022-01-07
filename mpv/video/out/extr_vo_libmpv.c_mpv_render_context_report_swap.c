
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flip_count; int lock; int video_wait; } ;
typedef TYPE_1__ mpv_render_context ;


 int MP_STATS (TYPE_1__*,char*) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mpv_render_context_report_swap(mpv_render_context *ctx)
{
    MP_STATS(ctx, "glcb-reportflip");

    pthread_mutex_lock(&ctx->lock);
    ctx->flip_count += 1;
    pthread_cond_broadcast(&ctx->video_wait);
    pthread_mutex_unlock(&ctx->lock);
}
