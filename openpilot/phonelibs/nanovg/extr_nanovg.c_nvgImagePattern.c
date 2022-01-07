
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int p ;
struct TYPE_4__ {float* xform; float* extent; int image; int outerColor; int innerColor; } ;
typedef TYPE_1__ NVGpaint ;
typedef int NVGcontext ;


 int NVG_NOTUSED (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int nvgRGBAf (int,int,int,float) ;
 int nvgTransformRotate (float*,float) ;

NVGpaint nvgImagePattern(NVGcontext* ctx,
        float cx, float cy, float w, float h, float angle,
        int image, float alpha)
{
 NVGpaint p;
 NVG_NOTUSED(ctx);
 memset(&p, 0, sizeof(p));

 nvgTransformRotate(p.xform, angle);
 p.xform[4] = cx;
 p.xform[5] = cy;

 p.extent[0] = w;
 p.extent[1] = h;

 p.image = image;

 p.innerColor = p.outerColor = nvgRGBAf(1,1,1,alpha);

 return p;
}
