
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* getBuf ) (TYPE_1__*,void*,int) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int stub1 (TYPE_1__*,void*,int) ;

int gdGetBuf (void *buf, int size, gdIOCtx * ctx)
{
 return (ctx->getBuf) (ctx, buf, size);
}
