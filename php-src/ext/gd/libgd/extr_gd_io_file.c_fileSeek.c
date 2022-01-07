
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdIOCtx {int dummy; } ;
struct TYPE_2__ {int f; } ;
typedef TYPE_1__ fileIOCtx ;


 int SEEK_SET ;
 scalar_t__ fseek (int ,int const,int ) ;

__attribute__((used)) static int fileSeek (struct gdIOCtx *ctx, const int pos)
{
 fileIOCtx *fctx;
 fctx = (fileIOCtx *) ctx;

 return (fseek (fctx->f, pos, SEEK_SET) == 0);
}
