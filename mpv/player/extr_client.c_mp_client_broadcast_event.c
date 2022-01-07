
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_event {int event_id; void* data; } ;
struct mp_client_api {int num_clients; int lock; int * clients; } ;
struct MPContext {struct mp_client_api* clients; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int send_event (int ,struct mpv_event*,int) ;

void mp_client_broadcast_event(struct MPContext *mpctx, int event, void *data)
{
    struct mp_client_api *clients = mpctx->clients;

    pthread_mutex_lock(&clients->lock);

    for (int n = 0; n < clients->num_clients; n++) {
        struct mpv_event event_data = {
            .event_id = event,
            .data = data,
        };
        send_event(clients->clients[n], &event_data, 1);
    }

    pthread_mutex_unlock(&clients->lock);
}
