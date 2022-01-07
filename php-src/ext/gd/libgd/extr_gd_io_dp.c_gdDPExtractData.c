
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gdIOCtx {int dummy; } ;
struct TYPE_4__ {int logicalSize; scalar_t__ realSize; int * data; scalar_t__ freeOK; scalar_t__ dataGood; } ;
typedef TYPE_1__ dynamicPtr ;
struct TYPE_5__ {TYPE_1__* dp; } ;
typedef TYPE_2__ dpIOCtx ;


 int gdFree (int *) ;
 int trimDynamic (TYPE_1__*) ;

void * gdDPExtractData (struct gdIOCtx *ctx, int *size)
{
 dynamicPtr *dp;
 dpIOCtx *dctx;
 void *data;

 dctx = (dpIOCtx *) ctx;
 dp = dctx->dp;


 if (dp->dataGood) {
  trimDynamic (dp);
  *size = dp->logicalSize;
  data = dp->data;
 } else {
  *size = 0;
  data = ((void*)0);
  if (dp->data != ((void*)0) && dp->freeOK) {
   gdFree(dp->data);
  }
 }

 dp->data = ((void*)0);
 dp->realSize = 0;
 dp->logicalSize = 0;

 return data;
}
