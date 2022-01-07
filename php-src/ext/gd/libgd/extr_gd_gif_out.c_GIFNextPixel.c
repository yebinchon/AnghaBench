
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gdImagePtr ;
struct TYPE_4__ {scalar_t__ CountDown; int cury; int curx; } ;
typedef TYPE_1__ GifCtx ;


 int BumpPixel (TYPE_1__*) ;
 int EOF ;
 int gdImageGetPixel (int ,int ,int ) ;

__attribute__((used)) static int
GIFNextPixel(gdImagePtr im, GifCtx *ctx)
{
        int r;

        if( ctx->CountDown == 0 )
                return EOF;

        --(ctx->CountDown);

        r = gdImageGetPixel(im, ctx->curx, ctx->cury);

        BumpPixel(ctx);

        return r;
}
