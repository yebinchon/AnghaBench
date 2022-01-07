
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct ao_push_state {int final_chunk; int lock; int wakeup; int buffer; scalar_t__ still_playing; scalar_t__ paused; } ;
struct ao {double buffer; TYPE_1__* driver; scalar_t__ samplerate; struct ao_push_state* api_priv; } ;
struct TYPE_2__ {int (* drain ) (struct ao*) ;} ;


 int MPMIN (double,double) ;
 int MP_VERBOSE (struct ao*,char*) ;
 int MP_WARN (struct ao*,char*) ;
 scalar_t__ mp_audio_buffer_samples (int ) ;
 struct timespec mp_rel_time_to_timespec (double) ;
 int mp_sleep_us (int) ;
 scalar_t__ pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int reset (struct ao*) ;
 int stub1 (struct ao*) ;
 double unlocked_get_delay (struct ao*) ;
 int wakeup_playthread (struct ao*) ;

__attribute__((used)) static void drain(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;
    double maxbuffer = ao->buffer / (double)ao->samplerate + 1;

    MP_VERBOSE(ao, "draining...\n");

    pthread_mutex_lock(&p->lock);
    if (p->paused)
        goto done;

    p->final_chunk = 1;
    wakeup_playthread(ao);




    struct timespec until = mp_rel_time_to_timespec(maxbuffer);
    while (p->still_playing && mp_audio_buffer_samples(p->buffer) > 0) {
        if (pthread_cond_timedwait(&p->wakeup, &p->lock, &until)) {
            MP_WARN(ao, "Draining is taking too long, aborting.\n");
            goto done;
        }
    }

    if (ao->driver->drain) {
        ao->driver->drain(ao);
    } else {
        double time = unlocked_get_delay(ao);
        mp_sleep_us(MPMIN(time, maxbuffer) * 1e6);
    }

done:
    pthread_mutex_unlock(&p->lock);

    reset(ao);
}
