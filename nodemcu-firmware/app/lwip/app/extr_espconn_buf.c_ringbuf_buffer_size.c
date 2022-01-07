
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf_t {size_t size; } ;



size_t ringbuf_buffer_size(const struct ringbuf_t *rb)
{
 return rb->size;
}
