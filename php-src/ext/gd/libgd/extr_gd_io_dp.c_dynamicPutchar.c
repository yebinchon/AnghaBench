
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdIOCtx {int dummy; } ;
typedef TYPE_1__* dpIOCtxPtr ;
struct TYPE_2__ {int dp; } ;


 int appendDynamic (int ,unsigned char*,int) ;

__attribute__((used)) static void dynamicPutchar (struct gdIOCtx *ctx, int a)
{
 unsigned char b;
 dpIOCtxPtr dctx;

 b = a;
 dctx = (dpIOCtxPtr) ctx;

 appendDynamic(dctx->dp, &b, 1);
}
