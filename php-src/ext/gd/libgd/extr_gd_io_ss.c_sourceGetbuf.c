
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* src; } ;
typedef TYPE_2__ ssIOCtx ;
typedef int gdIOCtx ;
struct TYPE_3__ {int (* source ) (int ,void*,int) ;int context; } ;


 int EOF ;
 int stub1 (int ,void*,int) ;

__attribute__((used)) static int sourceGetbuf (gdIOCtx * ctx, void *buf, int size)
{
 ssIOCtx *lctx;
 int res;

 lctx = (ssIOCtx *) ctx;

 res = ((lctx->src->source) (lctx->src->context, buf, size));






 if (res == 0) {
  return EOF;
 } else if (res < 0) {
  return 0;
 } else {
  return res;
 }
}
