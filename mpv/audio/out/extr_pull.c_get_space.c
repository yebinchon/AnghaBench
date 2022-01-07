
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_pull_state {int * buffers; } ;
struct ao {int num_planes; int sstride; struct ao_pull_state* api_priv; } ;


 int mp_ring_available (int ) ;

__attribute__((used)) static int get_space(struct ao *ao)
{
    struct ao_pull_state *p = ao->api_priv;


    return mp_ring_available(p->buffers[ao->num_planes - 1]) / ao->sstride;
}
