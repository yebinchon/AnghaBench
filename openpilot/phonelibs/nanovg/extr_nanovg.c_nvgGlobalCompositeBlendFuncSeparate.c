
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int srcRGB; int dstRGB; int srcAlpha; int dstAlpha; } ;
struct TYPE_4__ {TYPE_2__ compositeOperation; } ;
typedef TYPE_1__ NVGstate ;
typedef int NVGcontext ;
typedef TYPE_2__ NVGcompositeOperationState ;


 TYPE_1__* nvg__getState (int *) ;

void nvgGlobalCompositeBlendFuncSeparate(NVGcontext* ctx, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha)
{
 NVGcompositeOperationState op;
 op.srcRGB = srcRGB;
 op.dstRGB = dstRGB;
 op.srcAlpha = srcAlpha;
 op.dstAlpha = dstAlpha;

 NVGstate* state = nvg__getState(ctx);
 state->compositeOperation = op;
}
