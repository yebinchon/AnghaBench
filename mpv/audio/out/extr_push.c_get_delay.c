
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_push_state {int lock; } ;
struct ao {struct ao_push_state* api_priv; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 double unlocked_get_delay (struct ao*) ;

__attribute__((used)) static double get_delay(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;
    pthread_mutex_lock(&p->lock);
    double delay = unlocked_get_delay(ao);
    pthread_mutex_unlock(&p->lock);
    return delay;
}
