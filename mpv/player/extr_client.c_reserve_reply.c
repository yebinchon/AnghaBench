
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_handle {scalar_t__ reserved_events; scalar_t__ num_events; scalar_t__ max_events; int lock; int choked; } ;


 int MPV_ERROR_EVENT_QUEUE_FULL ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int reserve_reply(struct mpv_handle *ctx)
{
    int res = MPV_ERROR_EVENT_QUEUE_FULL;
    pthread_mutex_lock(&ctx->lock);
    if (ctx->reserved_events + ctx->num_events < ctx->max_events && !ctx->choked)
    {
        ctx->reserved_events++;
        res = 0;
    }
    pthread_mutex_unlock(&ctx->lock);
    return res;
}
