
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NVGcontext ;


 int nvgEllipse (int *,float,float,float,float) ;

void nvgCircle(NVGcontext* ctx, float cx, float cy, float r)
{
 nvgEllipse(ctx, cx,cy, r,r);
}
