
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float nvg__cosf (float) ;
 float nvg__sinf (float) ;

void nvgTransformRotate(float* t, float a)
{
 float cs = nvg__cosf(a), sn = nvg__sinf(a);
 t[0] = cs; t[1] = sn;
 t[2] = -sn; t[3] = cs;
 t[4] = 0.0f; t[5] = 0.0f;
}
