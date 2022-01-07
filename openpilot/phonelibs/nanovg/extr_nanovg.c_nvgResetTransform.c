
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xform; } ;
typedef TYPE_1__ NVGstate ;
typedef int NVGcontext ;


 int nvgTransformIdentity (int ) ;
 TYPE_1__* nvg__getState (int *) ;

void nvgResetTransform(NVGcontext* ctx)
{
 NVGstate* state = nvg__getState(ctx);
 nvgTransformIdentity(state->xform);
}
