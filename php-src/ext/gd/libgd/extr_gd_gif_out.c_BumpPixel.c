
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ curx; scalar_t__ Width; int cury; int Pass; int Height; int Interlace; } ;
typedef TYPE_1__ GifCtx ;



__attribute__((used)) static void
BumpPixel(GifCtx *ctx)
{



        ++(ctx->curx);






        if( ctx->curx == ctx->Width ) {
                ctx->curx = 0;

                if( !ctx->Interlace )
                        ++(ctx->cury);
                else {
                     switch( ctx->Pass ) {

                       case 0:
                          ctx->cury += 8;
                          if( ctx->cury >= ctx->Height ) {
                                ++(ctx->Pass);
                                ctx->cury = 4;
                          }
                          break;

                       case 1:
                          ctx->cury += 8;
                          if( ctx->cury >= ctx->Height ) {
                                ++(ctx->Pass);
                                ctx->cury = 2;
                          }
                          break;

                       case 2:
                          ctx->cury += 4;
                          if( ctx->cury >= ctx->Height ) {
                             ++(ctx->Pass);
                             ctx->cury = 1;
                          }
                          break;

                       case 3:
                          ctx->cury += 2;
                          break;
                        }
                }
        }
}
