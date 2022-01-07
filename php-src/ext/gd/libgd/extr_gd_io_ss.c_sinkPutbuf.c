
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* ssIOCtxPtr ;
struct TYPE_5__ {TYPE_1__* snk; } ;
typedef TYPE_2__ ssIOCtx ;
typedef int gdIOCtx ;
struct TYPE_4__ {int (* sink ) (int ,void const*,int) ;int context; } ;


 int stub1 (int ,void const*,int) ;

__attribute__((used)) static int sinkPutbuf (gdIOCtx * ctx, const void *buf, int size)
{
 ssIOCtxPtr lctx;
 int res;

 lctx = (ssIOCtx *) ctx;

 res = (lctx->snk->sink) (lctx->snk->context, buf, size);

 if (res <= 0) {
  return 0;
 } else {
  return res;
 }
}
