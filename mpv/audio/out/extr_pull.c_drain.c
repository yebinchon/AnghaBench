
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_pull_state {int * buffers; int draining; int state; } ;
struct ao {scalar_t__ bps; struct ao_pull_state* api_priv; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ IS_PLAYING (int) ;
 int atomic_load (int *) ;
 int atomic_store (int *,int) ;
 int get_eof (struct ao*) ;
 double mp_ring_buffered (int ) ;
 int mp_sleep_us (int) ;
 scalar_t__ mp_time_us () ;
 int reset (struct ao*) ;

__attribute__((used)) static void drain(struct ao *ao)
{
    struct ao_pull_state *p = ao->api_priv;
    int state = atomic_load(&p->state);
    if (IS_PLAYING(state)) {
        atomic_store(&p->draining, 1);

        mp_sleep_us(mp_ring_buffered(p->buffers[0]) / (double)ao->bps * 1e6);




        int64_t max = mp_time_us() + 250000;
        while (mp_time_us() < max && !get_eof(ao))
            mp_sleep_us(1);
    }
    reset(ao);
}
