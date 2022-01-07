
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_ring {int buffer; } ;


 int talloc_get_size (int ) ;

int mp_ring_size(struct mp_ring *buffer)
{
    return talloc_get_size(buffer->buffer);
}
