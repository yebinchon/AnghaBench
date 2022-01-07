
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* mpv_render_update_fn ) (void*) ;
struct TYPE_3__ {int update_lock; void* update_cb_ctx; int (* update_cb ) (void*) ;} ;
typedef TYPE_1__ mpv_render_context ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (void*) ;

void mpv_render_context_set_update_callback(mpv_render_context *ctx,
                                            mpv_render_update_fn callback,
                                            void *callback_ctx)
{
    pthread_mutex_lock(&ctx->update_lock);
    ctx->update_cb = callback;
    ctx->update_cb_ctx = callback_ctx;
    if (ctx->update_cb)
        ctx->update_cb(ctx->update_cb_ctx);
    pthread_mutex_unlock(&ctx->update_lock);
}
