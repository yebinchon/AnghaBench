
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_pull_state {int * buffers; int end_time_us; } ;
struct ao {scalar_t__ bps; struct ao_pull_state* api_priv; } ;
typedef double int64_t ;


 double MPMAX (int ,double) ;
 double atomic_load (int *) ;
 double mp_ring_buffered (int ) ;
 double mp_time_us () ;

__attribute__((used)) static double get_delay(struct ao *ao)
{
    struct ao_pull_state *p = ao->api_priv;

    int64_t end = atomic_load(&p->end_time_us);
    int64_t now = mp_time_us();
    double driver_delay = MPMAX(0, (end - now) / (1000.0 * 1000.0));
    return mp_ring_buffered(p->buffers[0]) / (double)ao->bps + driver_delay;
}
