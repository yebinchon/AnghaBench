
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queued_wakeup; int lock; } ;
typedef TYPE_1__ mpv_handle ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int wakeup_client (TYPE_1__*) ;

void mpv_wakeup(mpv_handle *ctx)
{
    pthread_mutex_lock(&ctx->lock);
    ctx->queued_wakeup = 1;
    wakeup_client(ctx);
    pthread_mutex_unlock(&ctx->lock);
}
