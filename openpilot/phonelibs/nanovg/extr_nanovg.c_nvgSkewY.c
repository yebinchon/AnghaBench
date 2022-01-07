
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xform; } ;
typedef TYPE_1__ NVGstate ;
typedef int NVGcontext ;


 int nvgTransformPremultiply (int ,float*) ;
 int nvgTransformSkewY (float*,float) ;
 TYPE_1__* nvg__getState (int *) ;

void nvgSkewY(NVGcontext* ctx, float angle)
{
 NVGstate* state = nvg__getState(ctx);
 float t[6];
 nvgTransformSkewY(t, angle);
 nvgTransformPremultiply(state->xform, t);
}
