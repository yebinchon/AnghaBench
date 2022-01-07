
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* putC ) (TYPE_1__*,unsigned char) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int IO_DBG (int ) ;
 int gd_error (char*) ;
 int stub1 (TYPE_1__*,unsigned char) ;
 int stub2 (TYPE_1__*,unsigned char) ;
 int stub3 (TYPE_1__*,unsigned char) ;
 int stub4 (TYPE_1__*,unsigned char) ;

void gdPutInt (int w, gdIOCtx * ctx)
{
 IO_DBG (gd_error("Putting int..."));
 (ctx->putC) (ctx, (unsigned char) (w >> 24));
 (ctx->putC) (ctx, (unsigned char) ((w >> 16) & 0xFF));
 (ctx->putC) (ctx, (unsigned char) ((w >> 8) & 0xFF));
 (ctx->putC) (ctx, (unsigned char) (w & 0xFF));
 IO_DBG (gd_error("put."));
}
