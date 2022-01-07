
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_pull_state {int end_time_us; int * buffers; } ;
struct ao {int num_planes; TYPE_1__* driver; int stream_silence; struct ao_pull_state* api_priv; } ;
struct TYPE_2__ {int (* reset ) (struct ao*) ;} ;


 int AO_STATE_NONE ;
 int atomic_store (int *,int ) ;
 int mp_ring_reset (int ) ;
 int set_state (struct ao*,int ) ;
 int stub1 (struct ao*) ;

__attribute__((used)) static void reset(struct ao *ao)
{
    struct ao_pull_state *p = ao->api_priv;
    if (!ao->stream_silence && ao->driver->reset)
        ao->driver->reset(ao);
    set_state(ao, AO_STATE_NONE);
    for (int n = 0; n < ao->num_planes; n++)
        mp_ring_reset(p->buffers[n]);
    atomic_store(&p->end_time_us, 0);
}
