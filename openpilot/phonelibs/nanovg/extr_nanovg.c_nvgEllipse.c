
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcontext ;


 float NVG_BEZIERTO ;
 float NVG_CLOSE ;
 int NVG_COUNTOF (float*) ;
 float NVG_KAPPA90 ;
 float NVG_MOVETO ;
 int nvg__appendCommands (int *,float*,int ) ;

void nvgEllipse(NVGcontext* ctx, float cx, float cy, float rx, float ry)
{
 float vals[] = {
  NVG_MOVETO, cx-rx, cy,
  NVG_BEZIERTO, cx-rx, cy+ry*NVG_KAPPA90, cx-rx*NVG_KAPPA90, cy+ry, cx, cy+ry,
  NVG_BEZIERTO, cx+rx*NVG_KAPPA90, cy+ry, cx+rx, cy+ry*NVG_KAPPA90, cx+rx, cy,
  NVG_BEZIERTO, cx+rx, cy-ry*NVG_KAPPA90, cx+rx*NVG_KAPPA90, cy-ry, cx, cy-ry,
  NVG_BEZIERTO, cx-rx*NVG_KAPPA90, cy-ry, cx-rx, cy-ry*NVG_KAPPA90, cx-rx, cy,
  NVG_CLOSE
 };
 nvg__appendCommands(ctx, vals, NVG_COUNTOF(vals));
}
