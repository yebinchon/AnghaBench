
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcontext ;


 int NVG_COUNTOF (float*) ;
 float NVG_WINDING ;
 int nvg__appendCommands (int *,float*,int ) ;

void nvgPathWinding(NVGcontext* ctx, int dir)
{
 float vals[] = { NVG_WINDING, (float)dir };
 nvg__appendCommands(ctx, vals, NVG_COUNTOF(vals));
}
