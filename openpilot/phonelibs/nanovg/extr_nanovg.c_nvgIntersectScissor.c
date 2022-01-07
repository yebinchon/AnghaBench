
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float* extent; int xform; } ;
struct TYPE_5__ {int xform; TYPE_1__ scissor; } ;
typedef TYPE_2__ NVGstate ;
typedef int NVGcontext ;


 int memcpy (float*,int ,int) ;
 int nvgScissor (int *,float,float,float,float) ;
 int nvgTransformInverse (float*,int ) ;
 int nvgTransformMultiply (float*,float*) ;
 float nvg__absf (float) ;
 TYPE_2__* nvg__getState (int *) ;
 int nvg__isectRects (float*,float,float,float,float,float,float,float,float) ;

void nvgIntersectScissor(NVGcontext* ctx, float x, float y, float w, float h)
{
 NVGstate* state = nvg__getState(ctx);
 float pxform[6], invxorm[6];
 float rect[4];
 float ex, ey, tex, tey;


 if (state->scissor.extent[0] < 0) {
  nvgScissor(ctx, x, y, w, h);
  return;
 }



 memcpy(pxform, state->scissor.xform, sizeof(float)*6);
 ex = state->scissor.extent[0];
 ey = state->scissor.extent[1];
 nvgTransformInverse(invxorm, state->xform);
 nvgTransformMultiply(pxform, invxorm);
 tex = ex*nvg__absf(pxform[0]) + ey*nvg__absf(pxform[2]);
 tey = ex*nvg__absf(pxform[1]) + ey*nvg__absf(pxform[3]);


 nvg__isectRects(rect, pxform[4]-tex,pxform[5]-tey,tex*2,tey*2, x,y,w,h);

 nvgScissor(ctx, rect[0], rect[1], rect[2], rect[3]);
}
