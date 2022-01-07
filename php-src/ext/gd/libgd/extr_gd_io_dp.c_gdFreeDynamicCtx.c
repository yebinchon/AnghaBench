
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdIOCtx {scalar_t__ logicalSize; scalar_t__ realSize; } ;
typedef struct gdIOCtx dynamicPtr ;
struct TYPE_2__ {struct gdIOCtx* dp; } ;
typedef TYPE_1__ dpIOCtx ;


 int gdFree (struct gdIOCtx*) ;

__attribute__((used)) static void gdFreeDynamicCtx (struct gdIOCtx *ctx)
{
 dynamicPtr *dp;
 dpIOCtx *dctx;

 dctx = (dpIOCtx *) ctx;
 dp = dctx->dp;

 gdFree(ctx);

 dp->realSize = 0;
 dp->logicalSize = 0;

 gdFree(dp);
}
