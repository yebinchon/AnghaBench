
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_push_state {int need_wakeup; int initial_unblocked; int lock; int wakeup; } ;
struct ao {struct ao_push_state* api_priv; int * api; } ;


 int ao_api_push ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int wakeup_playthread (struct ao*) ;

void ao_unblock(struct ao *ao)
{
    if (ao->api == &ao_api_push) {
        struct ao_push_state *p = ao->api_priv;
        pthread_mutex_lock(&p->lock);
        p->need_wakeup = 1;
        p->initial_unblocked = 1;
        wakeup_playthread(ao);
        pthread_cond_signal(&p->wakeup);
        pthread_mutex_unlock(&p->lock);
    }
}
