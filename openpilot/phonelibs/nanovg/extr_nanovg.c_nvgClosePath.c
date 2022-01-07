
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcontext ;


 float NVG_CLOSE ;
 int NVG_COUNTOF (float*) ;
 int nvg__appendCommands (int *,float*,int ) ;

void nvgClosePath(NVGcontext* ctx)
{
 float vals[] = { NVG_CLOSE };
 nvg__appendCommands(ctx, vals, NVG_COUNTOF(vals));
}
