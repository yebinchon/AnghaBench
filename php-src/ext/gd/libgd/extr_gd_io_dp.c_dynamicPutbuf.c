
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gdIOCtx {int dummy; } ;
struct TYPE_3__ {TYPE_2__* dp; } ;
typedef TYPE_1__ dpIOCtx ;
struct TYPE_4__ {scalar_t__ dataGood; } ;


 int appendDynamic (TYPE_2__*,void const*,int) ;

__attribute__((used)) static int
dynamicPutbuf (struct gdIOCtx *ctx, const void *buf, int size)
{
  dpIOCtx *dctx;
  dctx = (dpIOCtx *) ctx;

  appendDynamic (dctx->dp, buf, size);

  if (dctx->dp->dataGood)
    {
      return size;
    }
  else
    {
      return -1;
    };

}
