
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int control_lock; int lock; int update_lock; int video_wait; int update_cond; struct TYPE_11__* dispatch; struct TYPE_11__* dr; struct TYPE_11__* renderer; struct TYPE_11__* priv; TYPE_1__* fns; int vo; int in_use; int client_api; } ;
typedef TYPE_2__ mpv_render_context ;
struct TYPE_10__ {int (* destroy ) (TYPE_2__*) ;} ;


 int INFINITY ;
 int assert (int) ;
 scalar_t__ atomic_load (int *) ;
 int dr_helper_acquire_thread (TYPE_2__*) ;
 int forget_frames (TYPE_2__*,int) ;
 int kill_video_async (int ) ;
 int mp_dispatch_queue_process (TYPE_2__*,int ) ;
 int mp_set_main_render_context (int ,TYPE_2__*,int) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (TYPE_2__*) ;
 int talloc_free (TYPE_2__*) ;

void mpv_render_context_free(mpv_render_context *ctx)
{
    if (!ctx)
        return;



    mp_set_main_render_context(ctx->client_api, ctx, 0);

    if (atomic_load(&ctx->in_use)) {






        kill_video_async(ctx->client_api);

        while (atomic_load(&ctx->in_use)) {
            mp_dispatch_queue_process(ctx->dispatch, INFINITY);
        }
    }

    pthread_mutex_lock(&ctx->lock);





    pthread_mutex_unlock(&ctx->lock);

    assert(!atomic_load(&ctx->in_use));
    assert(!ctx->vo);



    if (ctx->dr)
        dr_helper_acquire_thread(ctx->dr);


    mp_dispatch_queue_process(ctx->dispatch, 0);

    forget_frames(ctx, 1);

    if (ctx->renderer) {
        ctx->renderer->fns->destroy(ctx->renderer);
        talloc_free(ctx->renderer->priv);
        talloc_free(ctx->renderer);
    }
    talloc_free(ctx->dr);
    talloc_free(ctx->dispatch);

    pthread_cond_destroy(&ctx->update_cond);
    pthread_cond_destroy(&ctx->video_wait);
    pthread_mutex_destroy(&ctx->update_lock);
    pthread_mutex_destroy(&ctx->lock);
    pthread_mutex_destroy(&ctx->control_lock);

    talloc_free(ctx);
}
