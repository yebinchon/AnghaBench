
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_ring {int dummy; } ;


 int mp_ring_read (struct mp_ring*,int *,int) ;

int mp_ring_drain(struct mp_ring *buffer, int len)
{
    return mp_ring_read(buffer, ((void*)0), len);
}
