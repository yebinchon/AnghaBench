
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_ring {int dummy; } ;


 int mp_ring_buffered (struct mp_ring*) ;
 int mp_ring_size (struct mp_ring*) ;

int mp_ring_available(struct mp_ring *buffer)
{
    return mp_ring_size(buffer) - mp_ring_buffered(buffer);
}
