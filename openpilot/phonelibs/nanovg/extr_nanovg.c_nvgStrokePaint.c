
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int xform; } ;
struct TYPE_5__ {int xform; TYPE_2__ stroke; } ;
typedef TYPE_1__ NVGstate ;
typedef TYPE_2__ NVGpaint ;
typedef int NVGcontext ;


 int nvgTransformMultiply (int ,int ) ;
 TYPE_1__* nvg__getState (int *) ;

void nvgStrokePaint(NVGcontext* ctx, NVGpaint paint)
{
 NVGstate* state = nvg__getState(ctx);
 state->stroke = paint;
 nvgTransformMultiply(state->stroke.xform, state->xform);
}
