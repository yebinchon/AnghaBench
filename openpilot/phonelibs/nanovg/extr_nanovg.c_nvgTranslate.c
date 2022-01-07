
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xform; } ;
typedef TYPE_1__ NVGstate ;
typedef int NVGcontext ;


 int nvgTransformPremultiply (int ,float*) ;
 int nvgTransformTranslate (float*,float,float) ;
 TYPE_1__* nvg__getState (int *) ;

void nvgTranslate(NVGcontext* ctx, float x, float y)
{
 NVGstate* state = nvg__getState(ctx);
 float t[6];
 nvgTransformTranslate(t, x,y);
 nvgTransformPremultiply(state->xform, t);
}
