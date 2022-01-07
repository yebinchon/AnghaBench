
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* getC ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int EOF ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

int gdGetWordLSB(signed short int *result, gdIOCtx *ctx)
{
 int high = 0, low = 0;
 low = (ctx->getC) (ctx);
 if (low == EOF) {
  return 0;
 }

 high = (ctx->getC) (ctx);
 if (high == EOF) {
  return 0;
 }

 if (result) {
  *result = (high << 8) | low;
 }

 return 1;
}
