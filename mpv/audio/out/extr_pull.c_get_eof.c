
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_pull_state {int * buffers; } ;
struct ao {struct ao_pull_state* api_priv; } ;


 scalar_t__ mp_ring_buffered (int ) ;

__attribute__((used)) static bool get_eof(struct ao *ao)
{
    struct ao_pull_state *p = ao->api_priv;


    return mp_ring_buffered(p->buffers[0]) == 0;
}
