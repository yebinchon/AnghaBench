
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xform; } ;
typedef TYPE_1__ NVGstate ;
typedef int NVGcontext ;


 int memcpy (float*,int ,int) ;
 TYPE_1__* nvg__getState (int *) ;

void nvgCurrentTransform(NVGcontext* ctx, float* xform)
{
 NVGstate* state = nvg__getState(ctx);
 if (xform == ((void*)0)) return;
 memcpy(xform, state->xform, sizeof(float)*6);
}
