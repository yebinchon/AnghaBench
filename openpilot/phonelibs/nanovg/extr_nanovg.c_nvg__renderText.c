
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int userPtr; int (* renderTriangles ) (int ,TYPE_5__*,int *,int *,int) ;} ;
struct TYPE_16__ {size_t fontImageIdx; int textTriCount; int drawCallCount; TYPE_3__ params; int * fontImages; } ;
struct TYPE_12__ {int a; } ;
struct TYPE_11__ {int a; } ;
struct TYPE_15__ {TYPE_2__ outerColor; TYPE_1__ innerColor; int image; } ;
struct TYPE_14__ {int scissor; int alpha; TYPE_5__ fill; } ;
typedef int NVGvertex ;
typedef TYPE_4__ NVGstate ;
typedef TYPE_5__ NVGpaint ;
typedef TYPE_6__ NVGcontext ;


 TYPE_4__* nvg__getState (TYPE_6__*) ;
 int stub1 (int ,TYPE_5__*,int *,int *,int) ;

__attribute__((used)) static void nvg__renderText(NVGcontext* ctx, NVGvertex* verts, int nverts)
{
 NVGstate* state = nvg__getState(ctx);
 NVGpaint paint = state->fill;


 paint.image = ctx->fontImages[ctx->fontImageIdx];


 paint.innerColor.a *= state->alpha;
 paint.outerColor.a *= state->alpha;

 ctx->params.renderTriangles(ctx->params.userPtr, &paint, &state->scissor, verts, nverts);

 ctx->drawCallCount++;
 ctx->textTriCount += nverts/3;
}
