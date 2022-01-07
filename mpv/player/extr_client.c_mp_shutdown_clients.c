
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_client_api {int shutting_down; int lock; scalar_t__ terminate_core_thread; scalar_t__ num_clients; } ;
struct MPContext {scalar_t__ is_cli; scalar_t__ outstanding_async; struct mp_client_api* clients; } ;


 int MPV_EVENT_SHUTDOWN ;
 int abort_async (struct MPContext*,int *,int ,int ) ;
 int mp_client_broadcast_event (struct MPContext*,int ,int *) ;
 int mp_set_timeout (struct MPContext*,double) ;
 double mp_time_sec () ;
 int mp_wait_events (struct MPContext*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mp_shutdown_clients(struct MPContext *mpctx)
{
    struct mp_client_api *clients = mpctx->clients;


    double abort_time = mp_time_sec() + 2;

    pthread_mutex_lock(&clients->lock);


    clients->shutting_down = 1;


    while (clients->num_clients || mpctx->outstanding_async ||
           !(mpctx->is_cli || clients->terminate_core_thread))
    {
        pthread_mutex_unlock(&clients->lock);

        double left = abort_time - mp_time_sec();
        if (left >= 0) {
            mp_set_timeout(mpctx, left);
        } else {



            abort_async(mpctx, ((void*)0), 0, 0);
        }

        mp_client_broadcast_event(mpctx, MPV_EVENT_SHUTDOWN, ((void*)0));
        mp_wait_events(mpctx);

        pthread_mutex_lock(&clients->lock);
    }

    pthread_mutex_unlock(&clients->lock);
}
