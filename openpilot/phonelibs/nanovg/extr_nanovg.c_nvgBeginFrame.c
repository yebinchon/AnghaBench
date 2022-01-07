
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int userPtr; int (* renderViewport ) (int ,int,int,float) ;} ;
struct TYPE_8__ {scalar_t__ textTriCount; scalar_t__ strokeTriCount; scalar_t__ fillTriCount; scalar_t__ drawCallCount; TYPE_1__ params; scalar_t__ nstates; } ;
typedef TYPE_2__ NVGcontext ;


 int nvgReset (TYPE_2__*) ;
 int nvgSave (TYPE_2__*) ;
 int nvg__setDevicePixelRatio (TYPE_2__*,float) ;
 int stub1 (int ,int,int,float) ;

void nvgBeginFrame(NVGcontext* ctx, int windowWidth, int windowHeight, float devicePixelRatio)
{




 ctx->nstates = 0;
 nvgSave(ctx);
 nvgReset(ctx);

 nvg__setDevicePixelRatio(ctx, devicePixelRatio);

 ctx->params.renderViewport(ctx->params.userPtr, windowWidth, windowHeight, devicePixelRatio);

 ctx->drawCallCount = 0;
 ctx->fillTriCount = 0;
 ctx->strokeTriCount = 0;
 ctx->textTriCount = 0;
}
