
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef double double_t ;


 double toint ;

double rint(double x)
{
 union {double f; uint64_t i;} u = {x};
 int e = u.i>>52 & 0x7ff;
 int s = u.i>>63;
 double_t y;

 if (e >= 0x3ff+52)
  return x;
 if (s)
  y = x - toint + toint;
 else
  y = x + toint - toint;
 if (y == 0)
  return s ? -0.0 : 0;
 return y;
}
