
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_push_state {int terminate; int thread; int lock; } ;
struct ao {struct ao_push_state* api_priv; } ;


 int destroy_no_thread (struct ao*) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int wakeup_playthread (struct ao*) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;

    pthread_mutex_lock(&p->lock);
    p->terminate = 1;
    wakeup_playthread(ao);
    pthread_mutex_unlock(&p->lock);

    pthread_join(p->thread, ((void*)0));

    destroy_no_thread(ao);
}
