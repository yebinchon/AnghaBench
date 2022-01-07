
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_pull_state {int underflow; int draining; int state; int * buffers; } ;
struct ao {int sstride; int num_planes; TYPE_1__* driver; int stream_silence; struct ao_pull_state* api_priv; } ;
struct TYPE_2__ {int (* resume ) (struct ao*) ;} ;


 int AOPLAY_FINAL_CHUNK ;
 int AO_STATE_PLAY ;
 int IS_PLAYING (int) ;
 int MPMIN (int,int) ;
 int MP_WARN (struct ao*,char*,int) ;
 int assert (int) ;
 int atomic_fetch_and (int *,int ) ;
 int atomic_load (int *) ;
 int atomic_store (int *,int) ;
 int get_space (struct ao*) ;
 int mp_ring_write (int ,void*,int) ;
 int set_state (struct ao*,int ) ;
 int stub1 (struct ao*) ;

__attribute__((used)) static int play(struct ao *ao, void **data, int samples, int flags)
{
    struct ao_pull_state *p = ao->api_priv;

    int write_samples = get_space(ao);
    write_samples = MPMIN(write_samples, samples);




    int write_bytes = write_samples * ao->sstride;
    for (int n = ao->num_planes - 1; n >= 0; n--) {
        int r = mp_ring_write(p->buffers[n], data[n], write_bytes);
        assert(r == write_bytes);
    }

    int state = atomic_load(&p->state);
    if (!IS_PLAYING(state)) {
        atomic_store(&p->draining, 0);
        atomic_store(&p->underflow, 0);
        set_state(ao, AO_STATE_PLAY);
        if (!ao->stream_silence)
            ao->driver->resume(ao);
    }

    bool draining = write_samples == samples && (flags & AOPLAY_FINAL_CHUNK);
    atomic_store(&p->draining, draining);

    int underflow = atomic_fetch_and(&p->underflow, 0);
    if (underflow)
        MP_WARN(ao, "Audio underflow by %d samples.\n", underflow);

    return write_samples;
}
