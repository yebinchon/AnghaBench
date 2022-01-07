
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_push_state {int thread; int buffer; int wakeup_pipe; int wakeup; int lock; } ;
struct ao {scalar_t__ device_buffer; int buffer; int samplerate; int channels; int format; struct ao_push_state* api_priv; } ;


 int MP_FATAL (struct ao*,char*) ;
 int destroy_no_thread (struct ao*) ;
 int mp_audio_buffer_create (struct ao*) ;
 int mp_audio_buffer_preallocate_min (int ,int ) ;
 int mp_audio_buffer_reinit_fmt (int ,int ,int *,int ) ;
 int mp_make_wakeup_pipe (int ) ;
 int playthread ;
 int pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_create (int *,int *,int ,struct ao*) ;
 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static int init(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;

    pthread_mutex_init(&p->lock, ((void*)0));
    pthread_cond_init(&p->wakeup, ((void*)0));
    mp_make_wakeup_pipe(p->wakeup_pipe);

    if (ao->device_buffer <= 0) {
        MP_FATAL(ao, "Couldn't probe device buffer size.\n");
        goto err;
    }

    p->buffer = mp_audio_buffer_create(ao);
    mp_audio_buffer_reinit_fmt(p->buffer, ao->format,
                               &ao->channels, ao->samplerate);
    mp_audio_buffer_preallocate_min(p->buffer, ao->buffer);
    if (pthread_create(&p->thread, ((void*)0), playthread, ao))
        goto err;
    return 0;
err:
    destroy_no_thread(ao);
    return -1;
}
