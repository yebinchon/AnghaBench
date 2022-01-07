
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcontext ;


 int NVG_COUNTOF (float*) ;
 float NVG_LINETO ;
 int nvg__appendCommands (int *,float*,int ) ;

void nvgLineTo(NVGcontext* ctx, float x, float y)
{
 float vals[] = { NVG_LINETO, x, y };
 nvg__appendCommands(ctx, vals, NVG_COUNTOF(vals));
}
