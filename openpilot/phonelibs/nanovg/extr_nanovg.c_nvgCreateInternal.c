
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int fontParams ;
struct TYPE_12__ {scalar_t__ (* renderCreate ) (int ) ;scalar_t__ (* renderCreateTexture ) (int ,int ,void*,void*,int ,int *) ;int userPtr; } ;
struct TYPE_13__ {scalar_t__* fontImages; float* commands; int ccommands; scalar_t__ fontImageIdx; void* height; void* width; TYPE_1__ params; int * fs; int * userPtr; int * renderDelete; int * renderDraw; int * renderUpdate; int * renderCreate; int flags; int * cache; scalar_t__ ncommands; } ;
typedef TYPE_1__ NVGparams ;
typedef TYPE_2__ NVGcontext ;
typedef TYPE_2__ FONSparams ;


 int FONS_ZERO_TOPLEFT ;
 int NVG_INIT_COMMANDS_SIZE ;
 void* NVG_INIT_FONTIMAGE_SIZE ;
 int NVG_MAX_FONTIMAGES ;
 int NVG_TEXTURE_ALPHA ;
 int * fonsCreateInternal (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int nvgDeleteInternal (TYPE_2__*) ;
 int nvgReset (TYPE_2__*) ;
 int nvgSave (TYPE_2__*) ;
 int * nvg__allocPathCache () ;
 int nvg__setDevicePixelRatio (TYPE_2__*,float) ;
 scalar_t__ stub1 (int ) ;
 scalar_t__ stub2 (int ,int ,void*,void*,int ,int *) ;

NVGcontext* nvgCreateInternal(NVGparams* params)
{
 FONSparams fontParams;
 NVGcontext* ctx = (NVGcontext*)malloc(sizeof(NVGcontext));
 int i;
 if (ctx == ((void*)0)) goto error;
 memset(ctx, 0, sizeof(NVGcontext));

 ctx->params = *params;
 for (i = 0; i < NVG_MAX_FONTIMAGES; i++)
  ctx->fontImages[i] = 0;

 ctx->commands = (float*)malloc(sizeof(float)*NVG_INIT_COMMANDS_SIZE);
 if (!ctx->commands) goto error;
 ctx->ncommands = 0;
 ctx->ccommands = NVG_INIT_COMMANDS_SIZE;

 ctx->cache = nvg__allocPathCache();
 if (ctx->cache == ((void*)0)) goto error;

 nvgSave(ctx);
 nvgReset(ctx);

 nvg__setDevicePixelRatio(ctx, 1.0f);

 if (ctx->params.renderCreate(ctx->params.userPtr) == 0) goto error;


 memset(&fontParams, 0, sizeof(fontParams));
 fontParams.width = NVG_INIT_FONTIMAGE_SIZE;
 fontParams.height = NVG_INIT_FONTIMAGE_SIZE;
 fontParams.flags = FONS_ZERO_TOPLEFT;
 fontParams.renderCreate = ((void*)0);
 fontParams.renderUpdate = ((void*)0);
 fontParams.renderDraw = ((void*)0);
 fontParams.renderDelete = ((void*)0);
 fontParams.userPtr = ((void*)0);
 ctx->fs = fonsCreateInternal(&fontParams);
 if (ctx->fs == ((void*)0)) goto error;


 ctx->fontImages[0] = ctx->params.renderCreateTexture(ctx->params.userPtr, NVG_TEXTURE_ALPHA, fontParams.width, fontParams.height, 0, ((void*)0));
 if (ctx->fontImages[0] == 0) goto error;
 ctx->fontImageIdx = 0;

 return ctx;

error:
 nvgDeleteInternal(ctx);
 return 0;
}
