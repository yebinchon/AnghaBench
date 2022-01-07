
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* putBuf ) (TYPE_1__*,char*,int) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int stub1 (TYPE_1__*,char*,int) ;

void Putword (int w, gdIOCtx * ctx)
{
 unsigned char buf[2];

 buf[0] = w & 0xff;
 buf[1] = (w / 256) & 0xff;
 (ctx->putBuf) (ctx, (char *) buf, 2);
}
