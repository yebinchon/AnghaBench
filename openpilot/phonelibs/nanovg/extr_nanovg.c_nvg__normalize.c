
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float nvg__sqrtf (float) ;

__attribute__((used)) static float nvg__normalize(float *x, float* y)
{
 float d = nvg__sqrtf((*x)*(*x) + (*y)*(*y));
 if (d > 1e-6f) {
  float id = 1.0f / d;
  *x *= id;
  *y *= id;
 }
 return d;
}
