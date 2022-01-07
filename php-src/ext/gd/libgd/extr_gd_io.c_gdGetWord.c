
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* getC ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int GD_IO_EOF_CHK (int) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

int gdGetWord (int *result, gdIOCtx * ctx)
{
 int r;
 r = (ctx->getC) (ctx);
 GD_IO_EOF_CHK(r);
 *result = r << 8;
 r = (ctx->getC) (ctx);
 GD_IO_EOF_CHK(r);
 *result += r;
 return 1;
}
