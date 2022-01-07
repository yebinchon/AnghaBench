
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float lineHeight; } ;
typedef TYPE_1__ NVGstate ;
typedef int NVGcontext ;


 TYPE_1__* nvg__getState (int *) ;

void nvgTextLineHeight(NVGcontext* ctx, float lineHeight)
{
 NVGstate* state = nvg__getState(ctx);
 state->lineHeight = lineHeight;
}
