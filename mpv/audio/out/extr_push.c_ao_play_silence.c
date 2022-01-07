
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_push_state {scalar_t__ silence; } ;
struct ao {TYPE_1__* driver; struct ao_push_state* api_priv; int * api; } ;
struct TYPE_2__ {int (* play ) (struct ao*,void**,int,int ) ;} ;


 int ao_api_push ;
 int assert (int) ;
 int realloc_silence (struct ao*,int) ;
 int stub1 (struct ao*,void**,int,int ) ;

int ao_play_silence(struct ao *ao, int samples)
{
    assert(ao->api == &ao_api_push);

    struct ao_push_state *p = ao->api_priv;

    if (!realloc_silence(ao, samples) || !ao->driver->play)
        return 0;

    return ao->driver->play(ao, (void **)p->silence, samples, 0);
}
