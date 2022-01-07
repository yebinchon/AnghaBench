
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



double modf(double x, double *iptr)
{
 union {double f; uint64_t i;} u = {x};
 uint64_t mask;
 int e = (int)(u.i>>52 & 0x7ff) - 0x3ff;


 if (e >= 52) {
  *iptr = x;
  if (e == 0x400 && u.i<<12 != 0)
   return x;
  u.i &= 1ULL<<63;
  return u.f;
 }


 if (e < 0) {
  u.i &= 1ULL<<63;
  *iptr = u.f;
  return x;
 }

 mask = -1ULL>>12>>e;
 if ((u.i & mask) == 0) {
  *iptr = x;
  u.i &= 1ULL<<63;
  return u.f;
 }
 u.i &= ~mask;
 *iptr = u.f;
 return x - u.f;
}
