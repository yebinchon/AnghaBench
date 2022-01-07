
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf_t {scalar_t__ head; scalar_t__ tail; } ;


 size_t ringbuf_capacity (struct ringbuf_t const*) ;

size_t ringbuf_bytes_free(const struct ringbuf_t *rb)
{
 if (rb->head >= rb->tail){
  return ringbuf_capacity(rb) - (rb->head - rb->tail);
 }else{
  return rb->tail - rb->head -1;
 }
}
