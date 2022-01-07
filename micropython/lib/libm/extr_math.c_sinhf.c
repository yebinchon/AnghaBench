
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int __expo2f (float) ;
 float expm1f (float) ;

float sinhf(float x)
{
 union {float f; uint32_t i;} u = {.f = x};
 uint32_t w;
 float t, h, absx;

 h = 0.5;
 if (u.i >> 31)
  h = -h;

 u.i &= 0x7fffffff;
 absx = u.f;
 w = u.i;


 if (w < 0x42b17217) {
  t = expm1f(absx);
  if (w < 0x3f800000) {
   if (w < 0x3f800000 - (12<<23))
    return x;
   return h*(2*t - t*t/(t+1));
  }
  return h*(t + t/(t+1));
 }


 t = 2*h*__expo2f(absx);
 return t;
}
