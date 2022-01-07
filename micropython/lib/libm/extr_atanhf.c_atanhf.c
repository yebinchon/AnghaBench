
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int float_t ;


 int FORCE_EVAL (float) ;
 float log1pf (int) ;

float atanhf(float x)
{
 union {float f; uint32_t i;} u = {.f = x};
 unsigned s = u.i >> 31;
 float_t y;


 u.i &= 0x7fffffff;
 y = u.f;

 if (u.i < 0x3f800000 - (1<<23)) {
  if (u.i < 0x3f800000 - (32<<23)) {

   if (u.i < (1<<23))
    FORCE_EVAL((float)(y*y));
  } else {

   y = 0.5f*log1pf(2*y + 2*y*y/(1-y));
  }
 } else {

  y = 0.5f*log1pf(2*(y/(1-y)));
 }
 return s ? -y : y;
}
