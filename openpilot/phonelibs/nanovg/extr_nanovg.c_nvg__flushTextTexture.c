
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int userPtr; int (* renderUpdateTexture ) (int ,int,int,int,int,int,unsigned char const*) ;} ;
struct TYPE_5__ {int* fontImages; size_t fontImageIdx; TYPE_1__ params; int fs; } ;
typedef TYPE_2__ NVGcontext ;


 unsigned char* fonsGetTextureData (int ,int*,int*) ;
 scalar_t__ fonsValidateTexture (int ,int*) ;
 int stub1 (int ,int,int,int,int,int,unsigned char const*) ;

__attribute__((used)) static void nvg__flushTextTexture(NVGcontext* ctx)
{
 int dirty[4];

 if (fonsValidateTexture(ctx->fs, dirty)) {
  int fontImage = ctx->fontImages[ctx->fontImageIdx];

  if (fontImage != 0) {
   int iw, ih;
   const unsigned char* data = fonsGetTextureData(ctx->fs, &iw, &ih);
   int x = dirty[0];
   int y = dirty[1];
   int w = dirty[2] - dirty[0];
   int h = dirty[3] - dirty[1];
   ctx->params.renderUpdateTexture(ctx->params.userPtr, fontImage, x,y, w,h, data);
  }
 }
}
