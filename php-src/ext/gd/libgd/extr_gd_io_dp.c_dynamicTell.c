
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gdIOCtx {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dp; } ;
typedef TYPE_2__ dpIOCtx ;
struct TYPE_3__ {long pos; } ;



__attribute__((used)) static long dynamicTell (struct gdIOCtx *ctx)
{
 dpIOCtx *dctx;

 dctx = (dpIOCtx *) ctx;

 return (dctx->dp->pos);
}
