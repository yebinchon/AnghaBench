
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_pull_state {int state; int * buffers; } ;
struct ao {int num_planes; int buffer; int sstride; TYPE_1__* driver; scalar_t__ stream_silence; struct ao_pull_state* api_priv; } ;
struct TYPE_2__ {int (* resume ) (struct ao*) ;} ;


 int AO_STATE_NONE ;
 int assert (int (*) (struct ao*)) ;
 int atomic_store (int *,int ) ;
 int mp_ring_new (struct ao*,int) ;
 int stub1 (struct ao*) ;

__attribute__((used)) static int init(struct ao *ao)
{
    struct ao_pull_state *p = ao->api_priv;
    for (int n = 0; n < ao->num_planes; n++)
        p->buffers[n] = mp_ring_new(ao, ao->buffer * ao->sstride);
    atomic_store(&p->state, AO_STATE_NONE);
    assert(ao->driver->resume);

    if (ao->stream_silence)
        ao->driver->resume(ao);

    return 0;
}
