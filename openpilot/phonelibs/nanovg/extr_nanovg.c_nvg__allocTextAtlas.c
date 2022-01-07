
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ (* renderCreateTexture ) (int ,int ,int,int,int ,int *) ;int userPtr; } ;
struct TYPE_7__ {int fontImageIdx; scalar_t__* fontImages; int fs; TYPE_1__ params; } ;
typedef TYPE_2__ NVGcontext ;


 int NVG_MAX_FONTIMAGES ;
 int NVG_MAX_FONTIMAGE_SIZE ;
 int NVG_TEXTURE_ALPHA ;
 int fonsResetAtlas (int ,int,int) ;
 int nvgImageSize (TYPE_2__*,scalar_t__,int*,int*) ;
 int nvg__flushTextTexture (TYPE_2__*) ;
 scalar_t__ stub1 (int ,int ,int,int,int ,int *) ;

__attribute__((used)) static int nvg__allocTextAtlas(NVGcontext* ctx)
{
 int iw, ih;
 nvg__flushTextTexture(ctx);
 if (ctx->fontImageIdx >= NVG_MAX_FONTIMAGES-1)
  return 0;

 if (ctx->fontImages[ctx->fontImageIdx+1] != 0)
  nvgImageSize(ctx, ctx->fontImages[ctx->fontImageIdx+1], &iw, &ih);
 else {
  nvgImageSize(ctx, ctx->fontImages[ctx->fontImageIdx], &iw, &ih);
  if (iw > ih)
   ih *= 2;
  else
   iw *= 2;
  if (iw > NVG_MAX_FONTIMAGE_SIZE || ih > NVG_MAX_FONTIMAGE_SIZE)
   iw = ih = NVG_MAX_FONTIMAGE_SIZE;
  ctx->fontImages[ctx->fontImageIdx+1] = ctx->params.renderCreateTexture(ctx->params.userPtr, NVG_TEXTURE_ALPHA, iw, ih, 0, ((void*)0));
 }
 ++ctx->fontImageIdx;
 fonsResetAtlas(ctx->fs, iw, ih);
 return 1;
}
