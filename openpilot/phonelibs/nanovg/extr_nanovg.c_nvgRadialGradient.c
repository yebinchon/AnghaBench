
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int p ;
struct TYPE_4__ {float* xform; float* extent; float radius; void* outerColor; void* innerColor; int feather; } ;
typedef TYPE_1__ NVGpaint ;
typedef int NVGcontext ;
typedef void* NVGcolor ;


 int NVG_NOTUSED (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int nvgTransformIdentity (float*) ;
 int nvg__maxf (float,float) ;

NVGpaint nvgRadialGradient(NVGcontext* ctx,
          float cx, float cy, float inr, float outr,
          NVGcolor icol, NVGcolor ocol)
{
 NVGpaint p;
 float r = (inr+outr)*0.5f;
 float f = (outr-inr);
 NVG_NOTUSED(ctx);
 memset(&p, 0, sizeof(p));

 nvgTransformIdentity(p.xform);
 p.xform[4] = cx;
 p.xform[5] = cy;

 p.extent[0] = r;
 p.extent[1] = r;

 p.radius = r;

 p.feather = nvg__maxf(1.0f, f);

 p.innerColor = icol;
 p.outerColor = ocol;

 return p;
}
