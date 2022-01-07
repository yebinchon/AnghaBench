
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcontext ;


 float NVG_BEZIERTO ;
 int NVG_COUNTOF (float*) ;
 int nvg__appendCommands (int *,float*,int ) ;

void nvgBezierTo(NVGcontext* ctx, float c1x, float c1y, float c2x, float c2y, float x, float y)
{
 float vals[] = { NVG_BEZIERTO, c1x, c1y, c2x, c2y, x, y };
 nvg__appendCommands(ctx, vals, NVG_COUNTOF(vals));
}
