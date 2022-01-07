
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float* xform; float* extent; } ;
struct TYPE_5__ {TYPE_1__ scissor; int xform; } ;
typedef TYPE_2__ NVGstate ;
typedef int NVGcontext ;


 int nvgTransformIdentity (float*) ;
 int nvgTransformMultiply (float*,int ) ;
 TYPE_2__* nvg__getState (int *) ;
 float nvg__maxf (float,float) ;

void nvgScissor(NVGcontext* ctx, float x, float y, float w, float h)
{
 NVGstate* state = nvg__getState(ctx);

 w = nvg__maxf(0.0f, w);
 h = nvg__maxf(0.0f, h);

 nvgTransformIdentity(state->scissor.xform);
 state->scissor.xform[4] = x+w*0.5f;
 state->scissor.xform[5] = y+h*0.5f;
 nvgTransformMultiply(state->scissor.xform, state->xform);

 state->scissor.extent[0] = w*0.5f;
 state->scissor.extent[1] = h*0.5f;
}
