
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xform; } ;
typedef TYPE_1__ NVGstate ;
typedef int NVGcontext ;


 int nvgTransformPremultiply (int ,float*) ;
 TYPE_1__* nvg__getState (int *) ;

void nvgTransform(NVGcontext* ctx, float a, float b, float c, float d, float e, float f)
{
 NVGstate* state = nvg__getState(ctx);
 float t[6] = { a, b, c, d, e, f };
 nvgTransformPremultiply(state->xform, t);
}
