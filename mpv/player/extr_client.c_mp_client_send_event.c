
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mpv_handle {int dummy; } ;
struct mpv_event {int event_id; void* data; int reply_userdata; } ;
struct mp_client_api {int lock; } ;
struct MPContext {struct mp_client_api* clients; } ;


 struct mpv_handle* find_client (struct mp_client_api*,char const*) ;
 int mp_client_broadcast_event (struct MPContext*,int,void*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int send_event (struct mpv_handle*,struct mpv_event*,int) ;
 int talloc_free (void*) ;

int mp_client_send_event(struct MPContext *mpctx, const char *client_name,
                         uint64_t reply_userdata, int event, void *data)
{
    if (!client_name) {
        mp_client_broadcast_event(mpctx, event, data);
        talloc_free(data);
        return 0;
    }

    struct mp_client_api *clients = mpctx->clients;
    int r = 0;

    struct mpv_event event_data = {
        .event_id = event,
        .data = data,
        .reply_userdata = reply_userdata,
    };

    pthread_mutex_lock(&clients->lock);

    struct mpv_handle *ctx = find_client(clients, client_name);
    if (ctx) {
        r = send_event(ctx, &event_data, 0);
    } else {
        r = -1;
        talloc_free(data);
    }

    pthread_mutex_unlock(&clients->lock);

    return r;
}
