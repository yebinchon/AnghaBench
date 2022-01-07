
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int userPtr; int (* renderStroke ) (int ,TYPE_7__*,int *,float,float,TYPE_6__*,int) ;scalar_t__ edgeAntiAlias; } ;
struct TYPE_23__ {float fringeWidth; int drawCallCount; int strokeTriCount; TYPE_4__* cache; TYPE_3__ params; } ;
struct TYPE_17__ {float a; } ;
struct TYPE_16__ {float a; } ;
struct TYPE_22__ {TYPE_2__ outerColor; TYPE_1__ innerColor; } ;
struct TYPE_21__ {int nstroke; } ;
struct TYPE_20__ {float strokeWidth; float alpha; int scissor; int miterLimit; int lineJoin; int lineCap; TYPE_7__ stroke; int xform; } ;
struct TYPE_19__ {int npaths; TYPE_6__* paths; } ;
typedef TYPE_5__ NVGstate ;
typedef TYPE_6__ NVGpath ;
typedef TYPE_7__ NVGpaint ;
typedef TYPE_8__ NVGcontext ;


 float nvg__clampf (float,float,float) ;
 int nvg__expandStroke (TYPE_8__*,float,int ,int ,int ) ;
 int nvg__flattenPaths (TYPE_8__*) ;
 float nvg__getAverageScale (int ) ;
 TYPE_5__* nvg__getState (TYPE_8__*) ;
 int stub1 (int ,TYPE_7__*,int *,float,float,TYPE_6__*,int) ;

void nvgStroke(NVGcontext* ctx)
{
 NVGstate* state = nvg__getState(ctx);
 float scale = nvg__getAverageScale(state->xform);
 float strokeWidth = nvg__clampf(state->strokeWidth * scale, 0.0f, 200.0f);
 NVGpaint strokePaint = state->stroke;
 const NVGpath* path;
 int i;

 if (strokeWidth < ctx->fringeWidth) {


  float alpha = nvg__clampf(strokeWidth / ctx->fringeWidth, 0.0f, 1.0f);
  strokePaint.innerColor.a *= alpha*alpha;
  strokePaint.outerColor.a *= alpha*alpha;
  strokeWidth = ctx->fringeWidth;
 }


 strokePaint.innerColor.a *= state->alpha;
 strokePaint.outerColor.a *= state->alpha;

 nvg__flattenPaths(ctx);

 if (ctx->params.edgeAntiAlias)
  nvg__expandStroke(ctx, strokeWidth*0.5f + ctx->fringeWidth*0.5f, state->lineCap, state->lineJoin, state->miterLimit);
 else
  nvg__expandStroke(ctx, strokeWidth*0.5f, state->lineCap, state->lineJoin, state->miterLimit);

 ctx->params.renderStroke(ctx->params.userPtr, &strokePaint, &state->scissor, ctx->fringeWidth,
        strokeWidth, ctx->cache->paths, ctx->cache->npaths);


 for (i = 0; i < ctx->cache->npaths; i++) {
  path = &ctx->cache->paths[i];
  ctx->strokeTriCount += path->nstroke-2;
  ctx->drawCallCount++;
 }
}
