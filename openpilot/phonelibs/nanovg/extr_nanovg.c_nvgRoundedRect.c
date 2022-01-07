
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcontext ;


 int nvgRoundedRectVarying (int *,float,float,float,float,float,float,float,float) ;

void nvgRoundedRect(NVGcontext* ctx, float x, float y, float w, float h, float r)
{
 nvgRoundedRectVarying(ctx, x, y, w, h, r, r, r, r);
}
