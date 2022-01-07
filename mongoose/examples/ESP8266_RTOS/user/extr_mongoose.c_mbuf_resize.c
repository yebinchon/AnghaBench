
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {size_t size; size_t len; char* buf; } ;


 scalar_t__ MBUF_REALLOC (char*,size_t) ;

void mbuf_resize(struct mbuf *a, size_t new_size) {
  if (new_size > a->size || (new_size < a->size && new_size >= a->len)) {
    char *buf = (char *) MBUF_REALLOC(a->buf, new_size);





    if (buf == ((void*)0) && new_size != 0) return;
    a->buf = buf;
    a->size = new_size;
  }
}
