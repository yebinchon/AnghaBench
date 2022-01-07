
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int from_bcd(int bcdnum)
{
 int fac, num = 0;

 for (fac = 1; bcdnum; fac *= 10) {
  num += (bcdnum % 16) * fac;
  bcdnum /= 16;
 }

 return num;
}
