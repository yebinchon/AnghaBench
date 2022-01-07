
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* wakeup_cb ) (void*) ;void* wakeup_cb_ctx; int wakeup_lock; } ;
typedef TYPE_1__ mpv_handle ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 void stub1 (void*) ;

void mpv_set_wakeup_callback(mpv_handle *ctx, void (*cb)(void *d), void *d)
{
    pthread_mutex_lock(&ctx->wakeup_lock);
    ctx->wakeup_cb = cb;
    ctx->wakeup_cb_ctx = d;
    if (ctx->wakeup_cb)
        ctx->wakeup_cb(ctx->wakeup_cb_ctx);
    pthread_mutex_unlock(&ctx->wakeup_lock);
}
