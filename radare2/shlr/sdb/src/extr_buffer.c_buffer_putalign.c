
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_4__ {scalar_t__ x; scalar_t__ n; scalar_t__ p; } ;
typedef TYPE_1__ buffer ;


 int buffer_flush (TYPE_1__*) ;
 int memcpy (scalar_t__,char const*,scalar_t__) ;

int buffer_putalign(buffer *s, const char *buf, ut32 len) {
 ut32 n;
 if (!s || !s->x || !buf) {
  return 0;
 }
 while (len > (n = s->n - s->p)) {
  memcpy (s->x + s->p, buf, n);
  s->p += n; buf += n; len -= n;
  if (!buffer_flush (s)) {
   return 0;
  }
 }

 memcpy (s->x + s->p, buf, len);
 s->p += len;
 return 1;
}
