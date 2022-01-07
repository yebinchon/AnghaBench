
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int control_lock; void* control_cb_ctx; int control_cb; } ;
typedef TYPE_1__ mpv_render_context ;
typedef int mp_render_cb_control_fn ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_render_context_set_control_callback(mpv_render_context *ctx,
                                            mp_render_cb_control_fn callback,
                                            void *callback_ctx)
{
    pthread_mutex_lock(&ctx->control_lock);
    ctx->control_cb = callback;
    ctx->control_cb_ctx = callback_ctx;
    pthread_mutex_unlock(&ctx->control_lock);
}
