
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fill; } ;
typedef TYPE_1__ NVGstate ;
typedef int NVGcontext ;
typedef int NVGcolor ;


 TYPE_1__* nvg__getState (int *) ;
 int nvg__setPaintColor (int *,int ) ;

void nvgFillColor(NVGcontext* ctx, NVGcolor color)
{
 NVGstate* state = nvg__getState(ctx);
 nvg__setPaintColor(&state->fill, color);
}
