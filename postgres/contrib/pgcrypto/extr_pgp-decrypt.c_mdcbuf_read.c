
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct MDCBufData {int avail; int * pos; int eof; } ;
typedef int PullFilter ;


 int mdcbuf_refill (struct MDCBufData*,int *) ;

__attribute__((used)) static int
mdcbuf_read(void *priv, PullFilter *src, int len,
   uint8 **data_p, uint8 *buf, int buflen)
{
 struct MDCBufData *st = priv;
 int res;

 if (!st->eof && len > st->avail)
 {
  res = mdcbuf_refill(st, src);
  if (res < 0)
   return res;
 }

 if (len > st->avail)
  len = st->avail;

 *data_p = st->pos;
 st->pos += len;
 st->avail -= len;
 return len;
}
