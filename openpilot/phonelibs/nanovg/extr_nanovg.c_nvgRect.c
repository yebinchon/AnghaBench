
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcontext ;


 float NVG_CLOSE ;
 int NVG_COUNTOF (float*) ;
 float NVG_LINETO ;
 float NVG_MOVETO ;
 int nvg__appendCommands (int *,float*,int ) ;

void nvgRect(NVGcontext* ctx, float x, float y, float w, float h)
{
 float vals[] = {
  NVG_MOVETO, x,y,
  NVG_LINETO, x,y+h,
  NVG_LINETO, x+w,y+h,
  NVG_LINETO, x+w,y,
  NVG_CLOSE
 };
 nvg__appendCommands(ctx, vals, NVG_COUNTOF(vals));
}
