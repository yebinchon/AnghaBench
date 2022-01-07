
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float* rgba; int member_0; } ;
typedef TYPE_1__ NVGcolor ;


 float nvg__clampf (float,float,float) ;

NVGcolor nvgLerpRGBA(NVGcolor c0, NVGcolor c1, float u)
{
 int i;
 float oneminu;
 NVGcolor cint = {0};

 u = nvg__clampf(u, 0.0f, 1.0f);
 oneminu = 1.0f - u;
 for( i = 0; i <4; i++ )
 {
  cint.rgba[i] = c0.rgba[i] * oneminu + c1.rgba[i] * u;
 }

 return cint;
}
