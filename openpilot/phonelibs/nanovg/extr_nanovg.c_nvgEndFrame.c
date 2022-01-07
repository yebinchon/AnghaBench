
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int userPtr; int (* renderFlush ) (int ,int ) ;} ;
struct TYPE_11__ {size_t fontImageIdx; int* fontImages; TYPE_1__ params; } ;
struct TYPE_10__ {int compositeOperation; } ;
typedef TYPE_2__ NVGstate ;
typedef TYPE_3__ NVGcontext ;


 int NVG_MAX_FONTIMAGES ;
 int nvgDeleteImage (TYPE_3__*,int) ;
 int nvgImageSize (TYPE_3__*,int,int*,int*) ;
 TYPE_2__* nvg__getState (TYPE_3__*) ;
 int stub1 (int ,int ) ;

void nvgEndFrame(NVGcontext* ctx)
{
 NVGstate* state = nvg__getState(ctx);
 ctx->params.renderFlush(ctx->params.userPtr, state->compositeOperation);
 if (ctx->fontImageIdx != 0) {
  int fontImage = ctx->fontImages[ctx->fontImageIdx];
  int i, j, iw, ih;

  if (fontImage == 0)
   return;
  nvgImageSize(ctx, fontImage, &iw, &ih);
  for (i = j = 0; i < ctx->fontImageIdx; i++) {
   if (ctx->fontImages[i] != 0) {
    int nw, nh;
    nvgImageSize(ctx, ctx->fontImages[i], &nw, &nh);
    if (nw < iw || nh < ih)
     nvgDeleteImage(ctx, ctx->fontImages[i]);
    else
     ctx->fontImages[j++] = ctx->fontImages[i];
   }
  }

  ctx->fontImages[j++] = ctx->fontImages[0];
  ctx->fontImages[0] = fontImage;
  ctx->fontImageIdx = 0;

  for (i = j; i < NVG_MAX_FONTIMAGES; i++)
   ctx->fontImages[i] = 0;
 }
}
