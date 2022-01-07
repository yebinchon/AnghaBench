
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_push_state {int paused; int still_playing; int lock; int buffer; } ;
struct ao {TYPE_1__* driver; struct ao_push_state* api_priv; } ;
struct TYPE_2__ {int (* reset ) (struct ao*) ;} ;


 int mp_audio_buffer_clear (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (struct ao*) ;
 int wakeup_playthread (struct ao*) ;

__attribute__((used)) static void reset(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;
    pthread_mutex_lock(&p->lock);
    if (ao->driver->reset)
        ao->driver->reset(ao);
    mp_audio_buffer_clear(p->buffer);
    p->paused = 0;
    if (p->still_playing)
        wakeup_playthread(ao);
    p->still_playing = 0;
    pthread_mutex_unlock(&p->lock);
}
