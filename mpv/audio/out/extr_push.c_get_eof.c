
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_push_state {int lock; int still_playing; } ;
struct ao {struct ao_push_state* api_priv; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static bool get_eof(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;
    pthread_mutex_lock(&p->lock);
    bool eof = !p->still_playing;
    pthread_mutex_unlock(&p->lock);
    return eof;
}
