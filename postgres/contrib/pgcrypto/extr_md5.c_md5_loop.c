
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {unsigned int md5_n; unsigned int md5_i; int const* md5_buf; } ;
typedef TYPE_1__ md5_ctxt ;


 unsigned int MD5_BUFLEN ;
 int md5_calc (int const*,TYPE_1__*) ;
 int memmove (int const*,int const*,unsigned int) ;

void
md5_loop(md5_ctxt *ctxt, const uint8 *input, unsigned len)
{
 unsigned int gap,
    i;

 ctxt->md5_n += len * 8;
 gap = MD5_BUFLEN - ctxt->md5_i;

 if (len >= gap)
 {
  memmove(ctxt->md5_buf + ctxt->md5_i, input, gap);
  md5_calc(ctxt->md5_buf, ctxt);

  for (i = gap; i + MD5_BUFLEN <= len; i += MD5_BUFLEN)
   md5_calc(input + i, ctxt);

  ctxt->md5_i = len - i;
  memmove(ctxt->md5_buf, input + i, ctxt->md5_i);
 }
 else
 {
  memmove(ctxt->md5_buf + ctxt->md5_i, input, len);
  ctxt->md5_i += len;
 }
}
