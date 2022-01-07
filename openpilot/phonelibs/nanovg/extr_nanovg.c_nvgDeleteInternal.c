
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int userPtr; int (* renderDelete ) (int ) ;} ;
struct TYPE_7__ {scalar_t__* fontImages; TYPE_1__ params; scalar_t__ fs; int * cache; struct TYPE_7__* commands; } ;
typedef TYPE_2__ NVGcontext ;


 int NVG_MAX_FONTIMAGES ;
 int fonsDeleteInternal (scalar_t__) ;
 int free (TYPE_2__*) ;
 int nvgDeleteImage (TYPE_2__*,scalar_t__) ;
 int nvg__deletePathCache (int *) ;
 int stub1 (int ) ;

void nvgDeleteInternal(NVGcontext* ctx)
{
 int i;
 if (ctx == ((void*)0)) return;
 if (ctx->commands != ((void*)0)) free(ctx->commands);
 if (ctx->cache != ((void*)0)) nvg__deletePathCache(ctx->cache);

 if (ctx->fs)
  fonsDeleteInternal(ctx->fs);

 for (i = 0; i < NVG_MAX_FONTIMAGES; i++) {
  if (ctx->fontImages[i] != 0) {
   nvgDeleteImage(ctx, ctx->fontImages[i]);
   ctx->fontImages[i] = 0;
  }
 }

 if (ctx->params.renderDelete != ((void*)0))
  ctx->params.renderDelete(ctx->params.userPtr);

 free(ctx);
}
