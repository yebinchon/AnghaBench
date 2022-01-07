
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int event_mask; int lock; } ;
typedef TYPE_1__ mpv_handle ;
typedef int mpv_event_id ;


 scalar_t__ INTERNAL_EVENT_BASE ;
 int MPV_ERROR_INVALID_PARAMETER ;
 int MPV_EVENT_SHUTDOWN ;
 int assert (int) ;
 int mpv_event_name (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int mpv_request_event(mpv_handle *ctx, mpv_event_id event, int enable)
{
    if (!mpv_event_name(event) || enable < 0 || enable > 1)
        return MPV_ERROR_INVALID_PARAMETER;
    if (event == MPV_EVENT_SHUTDOWN && !enable)
        return MPV_ERROR_INVALID_PARAMETER;
    assert(event < (int)INTERNAL_EVENT_BASE);
    pthread_mutex_lock(&ctx->lock);
    uint64_t bit = 1ULL << event;
    ctx->event_mask = enable ? ctx->event_mask | bit : ctx->event_mask & ~bit;
    pthread_mutex_unlock(&ctx->lock);
    return 0;
}
