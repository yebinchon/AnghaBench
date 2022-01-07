
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mpv_handle {int property_event_masks; int event_mask; int choked; int lock; } ;
struct mpv_event {unsigned long long event_id; } ;


 int MP_ERR (struct mpv_handle*,char*) ;
 int append_event (struct mpv_handle*,struct mpv_event,int) ;
 int notify_property_events (struct mpv_handle*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int send_event(struct mpv_handle *ctx, struct mpv_event *event, bool copy)
{
    pthread_mutex_lock(&ctx->lock);
    uint64_t mask = 1ULL << event->event_id;
    if (ctx->property_event_masks & mask)
        notify_property_events(ctx, mask);
    int r;
    if (!(ctx->event_mask & mask)) {
        r = 0;
    } else if (ctx->choked) {
        r = -1;
    } else {
        r = append_event(ctx, *event, copy);
        if (r < 0) {
            MP_ERR(ctx, "Too many events queued.\n");
            ctx->choked = 1;
        }
    }
    pthread_mutex_unlock(&ctx->lock);
    return r;
}
