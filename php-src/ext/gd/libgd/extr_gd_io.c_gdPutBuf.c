
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* putBuf ) (TYPE_1__*,void const*,int) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int IO_DBG (int ) ;
 int gd_error (char*) ;
 int stub1 (TYPE_1__*,void const*,int) ;

int gdPutBuf (const void *buf, int size, gdIOCtx * ctx)
{
 IO_DBG (gd_error("Putting buf..."));
 return (ctx->putBuf) (ctx, buf, size);
 IO_DBG (gd_error("put."));
}
