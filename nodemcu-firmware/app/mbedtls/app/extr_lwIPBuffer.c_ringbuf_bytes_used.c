
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf_t {int dummy; } ;


 size_t ringbuf_bytes_free (struct ringbuf_t const*) ;
 size_t ringbuf_capacity (struct ringbuf_t const*) ;

size_t ringbuf_bytes_used(const struct ringbuf_t *rb)
{
 return ringbuf_capacity(rb) - ringbuf_bytes_free(rb);
}
