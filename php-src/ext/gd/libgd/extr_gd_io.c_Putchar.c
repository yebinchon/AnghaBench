
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* putC ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int stub1 (TYPE_1__*,int) ;

void Putchar (int c, gdIOCtx * ctx)
{
 (ctx->putC) (ctx, c & 0xff);
}
