
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct MDCBufData {scalar_t__ mdc_avail; scalar_t__ mdc_buf; } ;


 int memmove (scalar_t__,int *,int) ;

__attribute__((used)) static void
mdcbuf_load_mdc(struct MDCBufData *st, uint8 *src, int len)
{
 memmove(st->mdc_buf + st->mdc_avail, src, len);
 st->mdc_avail += len;
}
