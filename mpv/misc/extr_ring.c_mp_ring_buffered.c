
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_ring {int dummy; } ;


 int mp_ring_get_rpos (struct mp_ring*) ;
 int mp_ring_get_wpos (struct mp_ring*) ;

int mp_ring_buffered(struct mp_ring *buffer)
{
    return (mp_ring_get_wpos(buffer) - mp_ring_get_rpos(buffer));
}
