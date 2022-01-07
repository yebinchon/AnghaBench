
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_2__* ssIOCtxPtr ;
typedef int ssIOCtx ;
typedef int gdSourcePtr ;
typedef int gdSinkPtr ;
typedef int gdIOCtx ;
struct TYPE_3__ {int gd_free; int * seek; int * tell; int putBuf; int putC; int getBuf; int getC; } ;
struct TYPE_4__ {TYPE_1__ ctx; int snk; int src; } ;


 int gdFreeSsCtx ;
 scalar_t__ gdMalloc (int) ;
 int sinkPutbuf ;
 int sinkPutchar ;
 int sourceGetbuf ;
 int sourceGetchar ;

gdIOCtx * gdNewSSCtx (gdSourcePtr src, gdSinkPtr snk)
{
 ssIOCtxPtr ctx;

 ctx = (ssIOCtxPtr) gdMalloc (sizeof (ssIOCtx));

 ctx->src = src;
 ctx->snk = snk;

 ctx->ctx.getC = sourceGetchar;
 ctx->ctx.getBuf = sourceGetbuf;

 ctx->ctx.putC = sinkPutchar;
 ctx->ctx.putBuf = sinkPutbuf;

 ctx->ctx.tell = ((void*)0);
 ctx->ctx.seek = ((void*)0);

 ctx->ctx.gd_free = gdFreeSsCtx;

 return (gdIOCtx *) ctx;
}
