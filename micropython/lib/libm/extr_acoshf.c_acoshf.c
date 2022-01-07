
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 float log1pf (float) ;
 float logf (float) ;
 float sqrtf (float) ;

float acoshf(float x)
{
 union {float f; uint32_t i;} u = {x};
 uint32_t a = u.i & 0x7fffffff;

 if (a < 0x3f800000+(1<<23))


  return log1pf(x-1 + sqrtf((x-1)*(x-1)+2*(x-1)));
 if (a < 0x3f800000+(12<<23))

  return logf(2*x - 1/(x+sqrtf(x*x-1)));

 return logf(x) + 0.693147180559945309417232121458176568f;
}
