
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gdIOCtxPtr ;
struct TYPE_3__ {int logicalSize; int pos; scalar_t__ data; } ;
typedef TYPE_1__ dynamicPtr ;
typedef TYPE_2__* dpIOCtxPtr ;
struct TYPE_4__ {TYPE_1__* dp; } ;


 int EOF ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static int dynamicGetbuf (gdIOCtxPtr ctx, void *buf, int len)
{
 int rlen, remain;
 dpIOCtxPtr dctx;
 dynamicPtr *dp;

 dctx = (dpIOCtxPtr) ctx;
 dp = dctx->dp;

 remain = dp->logicalSize - dp->pos;
 if (remain >= len) {
  rlen = len;
 } else {
  if (remain <= 0) {
   return EOF;
  }
  rlen = remain;
 }

 memcpy(buf, (void *) ((char *) dp->data + dp->pos), rlen);
 dp->pos += rlen;

 return rlen;
}
