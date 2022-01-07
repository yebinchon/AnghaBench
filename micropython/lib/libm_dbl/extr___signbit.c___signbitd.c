
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



int __signbitd(double x)
{
 union {
  double d;
  uint64_t i;
 } y = { x };
 return y.i>>63;
}
