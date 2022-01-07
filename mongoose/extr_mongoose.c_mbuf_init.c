
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int * buf; scalar_t__ size; scalar_t__ len; } ;


 int mbuf_resize (struct mbuf*,size_t) ;

void mbuf_init(struct mbuf *mbuf, size_t initial_size) {
  mbuf->len = mbuf->size = 0;
  mbuf->buf = ((void*)0);
  mbuf_resize(mbuf, initial_size);
}
