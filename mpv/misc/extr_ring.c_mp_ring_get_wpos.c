
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_ring {int wpos; } ;


 unsigned long long atomic_load (int *) ;

__attribute__((used)) static unsigned long long mp_ring_get_wpos(struct mp_ring *buffer)
{
    return atomic_load(&buffer->wpos);
}
