
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float* extent; int xform; } ;
struct TYPE_5__ {TYPE_1__ scissor; } ;
typedef TYPE_2__ NVGstate ;
typedef int NVGcontext ;


 int memset (int ,int ,int) ;
 TYPE_2__* nvg__getState (int *) ;

void nvgResetScissor(NVGcontext* ctx)
{
 NVGstate* state = nvg__getState(ctx);
 memset(state->scissor.xform, 0, sizeof(state->scissor.xform));
 state->scissor.extent[0] = -1.0f;
 state->scissor.extent[1] = -1.0f;
}
