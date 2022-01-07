
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float* extent; } ;
struct TYPE_6__ {float strokeWidth; float miterLimit; float alpha; float fontSize; float letterSpacing; float lineHeight; float fontBlur; int textAlign; scalar_t__ fontId; TYPE_1__ scissor; int xform; int lineJoin; int lineCap; int compositeOperation; int stroke; int fill; } ;
typedef TYPE_2__ NVGstate ;
typedef int NVGcontext ;


 int NVG_ALIGN_BASELINE ;
 int NVG_ALIGN_LEFT ;
 int NVG_BUTT ;
 int NVG_MITER ;
 int NVG_SOURCE_OVER ;
 int memset (TYPE_2__*,int ,int) ;
 int nvgRGBA (int,int,int,int) ;
 int nvgTransformIdentity (int ) ;
 int nvg__compositeOperationState (int ) ;
 TYPE_2__* nvg__getState (int *) ;
 int nvg__setPaintColor (int *,int ) ;

void nvgReset(NVGcontext* ctx)
{
 NVGstate* state = nvg__getState(ctx);
 memset(state, 0, sizeof(*state));

 nvg__setPaintColor(&state->fill, nvgRGBA(255,255,255,255));
 nvg__setPaintColor(&state->stroke, nvgRGBA(0,0,0,255));
 state->compositeOperation = nvg__compositeOperationState(NVG_SOURCE_OVER);
 state->strokeWidth = 1.0f;
 state->miterLimit = 10.0f;
 state->lineCap = NVG_BUTT;
 state->lineJoin = NVG_MITER;
 state->alpha = 1.0f;
 nvgTransformIdentity(state->xform);

 state->scissor.extent[0] = -1.0f;
 state->scissor.extent[1] = -1.0f;

 state->fontSize = 16.0f;
 state->letterSpacing = 0.0f;
 state->lineHeight = 1.0f;
 state->fontBlur = 0.0f;
 state->textAlign = NVG_ALIGN_LEFT | NVG_ALIGN_BASELINE;
 state->fontId = 0;
}
