
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; scalar_t__ async_counter; scalar_t__ reserved_events; } ;
typedef TYPE_1__ mpv_handle ;


 int INT64_MAX ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int wait_wakeup (TYPE_1__*,int ) ;

void mpv_wait_async_requests(mpv_handle *ctx)
{
    pthread_mutex_lock(&ctx->lock);
    while (ctx->reserved_events || ctx->async_counter)
        wait_wakeup(ctx, INT64_MAX);
    pthread_mutex_unlock(&ctx->lock);
}
