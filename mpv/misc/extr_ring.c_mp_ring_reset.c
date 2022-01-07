
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_ring {int rpos; int wpos; } ;


 int atomic_store (int *,int ) ;

void mp_ring_reset(struct mp_ring *buffer)
{
    atomic_store(&buffer->wpos, 0);
    atomic_store(&buffer->rpos, 0);
}
