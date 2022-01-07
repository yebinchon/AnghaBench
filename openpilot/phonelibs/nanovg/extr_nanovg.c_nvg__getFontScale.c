
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xform; } ;
typedef TYPE_1__ NVGstate ;


 int nvg__getAverageScale (int ) ;
 float nvg__minf (int ,float) ;
 int nvg__quantize (int ,float) ;

__attribute__((used)) static float nvg__getFontScale(NVGstate* state)
{
 return nvg__minf(nvg__quantize(nvg__getAverageScale(state->xform), 0.01f), 4.0f);
}
