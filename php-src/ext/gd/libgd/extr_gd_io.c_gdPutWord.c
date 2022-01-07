
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* putC ) (TYPE_1__*,unsigned char) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int IO_DBG (int ) ;
 int gd_error (char*) ;
 int stub1 (TYPE_1__*,unsigned char) ;
 int stub2 (TYPE_1__*,unsigned char) ;

void gdPutWord (int w, gdIOCtx * ctx)
{
 IO_DBG (gd_error("Putting word..."));
 (ctx->putC) (ctx, (unsigned char) (w >> 8));
 (ctx->putC) (ctx, (unsigned char) (w & 0xFF));
 IO_DBG (gd_error("put."));
}
