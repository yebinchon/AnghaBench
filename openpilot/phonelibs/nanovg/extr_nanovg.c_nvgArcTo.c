
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float commandx; float commandy; scalar_t__ ncommands; int distTol; } ;
typedef TYPE_1__ NVGcontext ;


 int NVG_CCW ;
 int NVG_CW ;
 int nvgArc (TYPE_1__*,float,float,float,float,float,int) ;
 int nvgLineTo (TYPE_1__*,float,float) ;
 float nvg__acosf (float) ;
 float nvg__atan2f (float,float) ;
 float nvg__cross (float,float,float,float) ;
 int nvg__distPtSeg (float,float,float,float,float,float) ;
 int nvg__normalize (float*,float*) ;
 scalar_t__ nvg__ptEquals (float,float,float,float,int) ;
 float nvg__tanf (float) ;

void nvgArcTo(NVGcontext* ctx, float x1, float y1, float x2, float y2, float radius)
{
 float x0 = ctx->commandx;
 float y0 = ctx->commandy;
 float dx0,dy0, dx1,dy1, a, d, cx,cy, a0,a1;
 int dir;

 if (ctx->ncommands == 0) {
  return;
 }


 if (nvg__ptEquals(x0,y0, x1,y1, ctx->distTol) ||
  nvg__ptEquals(x1,y1, x2,y2, ctx->distTol) ||
  nvg__distPtSeg(x1,y1, x0,y0, x2,y2) < ctx->distTol*ctx->distTol ||
  radius < ctx->distTol) {
  nvgLineTo(ctx, x1,y1);
  return;
 }


 dx0 = x0-x1;
 dy0 = y0-y1;
 dx1 = x2-x1;
 dy1 = y2-y1;
 nvg__normalize(&dx0,&dy0);
 nvg__normalize(&dx1,&dy1);
 a = nvg__acosf(dx0*dx1 + dy0*dy1);
 d = radius / nvg__tanf(a/2.0f);



 if (d > 10000.0f) {
  nvgLineTo(ctx, x1,y1);
  return;
 }

 if (nvg__cross(dx0,dy0, dx1,dy1) > 0.0f) {
  cx = x1 + dx0*d + dy0*radius;
  cy = y1 + dy0*d + -dx0*radius;
  a0 = nvg__atan2f(dx0, -dy0);
  a1 = nvg__atan2f(-dx1, dy1);
  dir = NVG_CW;

 } else {
  cx = x1 + dx0*d + -dy0*radius;
  cy = y1 + dy0*d + dx0*radius;
  a0 = nvg__atan2f(-dx0, dy0);
  a1 = nvg__atan2f(dx1, -dy1);
  dir = NVG_CCW;

 }

 nvgArc(ctx, cx, cy, radius, a0, a1, dir);
}
