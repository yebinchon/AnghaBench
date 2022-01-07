
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int (* getC ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;


 unsigned int EOF ;
 unsigned int stub1 (TYPE_1__*) ;
 unsigned int stub2 (TYPE_1__*) ;
 unsigned int stub3 (TYPE_1__*) ;
 unsigned int stub4 (TYPE_1__*) ;

int gdGetIntLSB(signed int *result, gdIOCtx *ctx)
{
 unsigned int c;
 unsigned int r = 0;

 c = (ctx->getC) (ctx);
 if (c == EOF) {
  return 0;
 }
 r |= (c << 24);
 r >>= 8;

 c = (ctx->getC) (ctx);
 if (c == EOF) {
  return 0;
 }
 r |= (c << 24);
 r >>= 8;

 c = (ctx->getC) (ctx);
 if (c == EOF) {
  return 0;
 }
 r |= (c << 24);
 r >>= 8;

 c = (ctx->getC) (ctx);
 if (c == EOF) {
  return 0;
 }
 r |= (c << 24);

 if (result) {
  *result = (signed int)r;
 }

 return 1;
}
