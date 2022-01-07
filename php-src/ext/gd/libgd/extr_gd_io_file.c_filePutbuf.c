
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gdIOCtx ;
struct TYPE_2__ {int f; } ;
typedef TYPE_1__ fileIOCtx ;


 int fwrite (void const*,int,int,int ) ;

__attribute__((used)) static int filePutbuf (gdIOCtx * ctx, const void *buf, int size)
{
 fileIOCtx *fctx;
 fctx = (fileIOCtx *) ctx;

 return fwrite(buf, 1, size, fctx->f);

}
