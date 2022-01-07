
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf_t {int dummy; } ;


 size_t ringbuf_buffer_size (struct ringbuf_t const*) ;

size_t ringbuf_capacity(const struct ringbuf_t *rb)
{
 return ringbuf_buffer_size(rb) - 1;
}
