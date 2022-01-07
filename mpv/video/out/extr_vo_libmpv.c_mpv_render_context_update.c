
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int lock; scalar_t__ next_frame; int dispatch; } ;
typedef TYPE_1__ mpv_render_context ;


 int MPV_RENDER_UPDATE_FRAME ;
 int mp_dispatch_queue_process (int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

uint64_t mpv_render_context_update(mpv_render_context *ctx)
{
    uint64_t res = 0;

    mp_dispatch_queue_process(ctx->dispatch, 0);

    pthread_mutex_lock(&ctx->lock);
    if (ctx->next_frame)
        res |= MPV_RENDER_UPDATE_FRAME;
    pthread_mutex_unlock(&ctx->lock);
    return res;
}
