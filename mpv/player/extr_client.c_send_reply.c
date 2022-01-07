
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mpv_handle {scalar_t__ reserved_events; int lock; } ;
struct mpv_event {int reply_userdata; } ;


 int abort () ;
 scalar_t__ append_event (struct mpv_handle*,struct mpv_event,int) ;
 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void send_reply(struct mpv_handle *ctx, uint64_t userdata,
                       struct mpv_event *event)
{
    event->reply_userdata = userdata;
    pthread_mutex_lock(&ctx->lock);

    assert(ctx->reserved_events > 0);
    ctx->reserved_events--;
    if (append_event(ctx, *event, 0) < 0)
        abort();
    pthread_mutex_unlock(&ctx->lock);
}
