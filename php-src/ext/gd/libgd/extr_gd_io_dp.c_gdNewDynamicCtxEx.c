
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gdIOCtx ;
typedef int dynamicPtr ;
struct TYPE_3__ {int gd_free; int tell; int seek; int putBuf; int getBuf; int putC; int getC; } ;
struct TYPE_4__ {TYPE_1__ ctx; int * dp; } ;
typedef TYPE_2__ dpIOCtx ;


 int dynamicGetbuf ;
 int dynamicGetchar ;
 int dynamicPutbuf ;
 int dynamicPutchar ;
 int dynamicSeek ;
 int dynamicTell ;
 int gdFreeDynamicCtx ;
 scalar_t__ gdMalloc (int) ;
 int * newDynamic (int,void*,int) ;

gdIOCtx * gdNewDynamicCtxEx (int initialSize, void *data, int freeOKFlag)
{
 dpIOCtx *ctx;
 dynamicPtr *dp;

 ctx = (dpIOCtx *) gdMalloc (sizeof (dpIOCtx));

 dp = newDynamic(initialSize, data, freeOKFlag);

 ctx->dp = dp;

 ctx->ctx.getC = dynamicGetchar;
 ctx->ctx.putC = dynamicPutchar;

 ctx->ctx.getBuf = dynamicGetbuf;
 ctx->ctx.putBuf = dynamicPutbuf;

 ctx->ctx.seek = dynamicSeek;
 ctx->ctx.tell = dynamicTell;

 ctx->ctx.gd_free = gdFreeDynamicCtx;

 return (gdIOCtx *) ctx;
}
