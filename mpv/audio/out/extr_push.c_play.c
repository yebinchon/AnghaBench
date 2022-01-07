
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_push_state {int paused; int final_chunk; int still_playing; int lock; scalar_t__ expected_end_time; int buffer; } ;
struct ao {struct ao_push_state* api_priv; } ;


 int AOPLAY_FINAL_CHUNK ;
 int MPMIN (int,int) ;
 int MP_TRACE (struct ao*,char*,int,int,int) ;
 int mp_audio_buffer_append (int ,void**,int) ;
 int mp_audio_buffer_get_write_available (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int wakeup_playthread (struct ao*) ;

__attribute__((used)) static int play(struct ao *ao, void **data, int samples, int flags)
{
    struct ao_push_state *p = ao->api_priv;

    pthread_mutex_lock(&p->lock);

    int write_samples = mp_audio_buffer_get_write_available(p->buffer);
    write_samples = MPMIN(write_samples, samples);

    MP_TRACE(ao, "samples=%d flags=%d r=%d\n", samples, flags, write_samples);

    if (write_samples < samples)
        flags = flags & ~AOPLAY_FINAL_CHUNK;
    bool is_final = flags & AOPLAY_FINAL_CHUNK;

    mp_audio_buffer_append(p->buffer, data, samples);

    bool got_data = write_samples > 0 || p->paused || p->final_chunk != is_final;

    p->final_chunk = is_final;
    p->paused = 0;
    if (got_data) {
        p->still_playing = 1;
        p->expected_end_time = 0;



        wakeup_playthread(ao);
    }
    pthread_mutex_unlock(&p->lock);
    return write_samples;
}
