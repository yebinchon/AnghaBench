
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf_entry {scalar_t__ len; } ;
struct ringbuf {int fill; int len; int slen; struct ringbuf_entry* buf; } ;



struct ringbuf_entry * ringbuf_get(struct ringbuf *r, int i)
{
 struct ringbuf_entry *e = r->buf + (((r->fill + i) % r->len) * r->slen);

 if (e->len > 0)
  return e;

 return ((void*)0);
}
