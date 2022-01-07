
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int (* getC ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;


 unsigned int EOF ;
 int GD_IO_EOF_CHK (unsigned int) ;
 unsigned int stub1 (TYPE_1__*) ;
 unsigned int stub2 (TYPE_1__*) ;
 unsigned int stub3 (TYPE_1__*) ;
 unsigned int stub4 (TYPE_1__*) ;

int gdGetInt (int *result, gdIOCtx * ctx)
{
 unsigned int r;
 r = (ctx->getC) (ctx);
 GD_IO_EOF_CHK(r);
 *result = r << 24;

 r = (ctx->getC) (ctx);
 GD_IO_EOF_CHK(r);
 *result += r << 16;

 r = (ctx->getC) (ctx);
 if (r == EOF) {
  return 0;
 }
 *result += r << 8;

 r = (ctx->getC) (ctx);
 GD_IO_EOF_CHK(r);
 *result += r;

 return 1;
}
