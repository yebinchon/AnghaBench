
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdIOCtx {int dummy; } ;
struct TYPE_2__ {int f; } ;
typedef TYPE_1__ fileIOCtx ;


 long ftell (int ) ;

__attribute__((used)) static long fileTell (struct gdIOCtx *ctx)
{
 fileIOCtx *fctx;
 fctx = (fileIOCtx *) ctx;

 return ftell (fctx->f);
}
