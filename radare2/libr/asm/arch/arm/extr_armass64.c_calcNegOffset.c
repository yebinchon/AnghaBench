
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int countTrailingZeros (int) ;

__attribute__((used)) static int calcNegOffset(int n, int shift) {
 int a = n >> shift;
 if (a == 0) {
  return 0xff;
 }


 int t = 0x400;
 while (!(t & a) && a != 0 && t != 0) {
  t = t >> 1;
 }
 t = t & (t - 1);
 a = a ^ t;

 if (countTrailingZeros(n) > shift) {
  a--;
 }
 return 0xff & (0xff - a);
}
