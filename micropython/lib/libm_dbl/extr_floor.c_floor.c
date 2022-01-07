
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ double_t ;


 int FORCE_EVAL (scalar_t__) ;
 double toint ;

double floor(double x)
{
 union {double f; uint64_t i;} u = {x};
 int e = u.i >> 52 & 0x7ff;
 double_t y;

 if (e >= 0x3ff+52 || x == 0)
  return x;

 if (u.i >> 63)
  y = x - toint + toint - x;
 else
  y = x + toint - toint - x;

 if (e <= 0x3ff-1) {
  FORCE_EVAL(y);
  return u.i >> 63 ? -1 : 0;
 }
 if (y > 0)
  return x + y - 1;
 return x + y;
}
