
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int EXTRACT_WORDS (int,int,double) ;
 int INSERT_WORDS (double,int,int) ;
 double tiny ;

double sqrt(double x)
{
 double z;
 int32_t sign = (int)0x80000000;
 int32_t ix0,s0,q,m,t,i;
 uint32_t r,t1,s1,ix1,q1;

 EXTRACT_WORDS(ix0, ix1, x);


 if ((ix0&0x7ff00000) == 0x7ff00000) {
  return x*x + x;
 }

 if (ix0 <= 0) {
  if (((ix0&~sign)|ix1) == 0)
   return x;
  if (ix0 < 0)
   return (x-x)/(x-x);
 }

 m = ix0>>20;
 if (m == 0) {
  while (ix0 == 0) {
   m -= 21;
   ix0 |= (ix1>>11);
   ix1 <<= 21;
  }
  for (i=0; (ix0&0x00100000) == 0; i++)
   ix0<<=1;
  m -= i - 1;
  ix0 |= ix1>>(32-i);
  ix1 <<= i;
 }
 m -= 1023;
 ix0 = (ix0&0x000fffff)|0x00100000;
 if (m & 1) {
  ix0 += ix0 + ((ix1&sign)>>31);
  ix1 += ix1;
 }
 m >>= 1;


 ix0 += ix0 + ((ix1&sign)>>31);
 ix1 += ix1;
 q = q1 = s0 = s1 = 0;
 r = 0x00200000;

 while (r != 0) {
  t = s0 + r;
  if (t <= ix0) {
   s0 = t + r;
   ix0 -= t;
   q += r;
  }
  ix0 += ix0 + ((ix1&sign)>>31);
  ix1 += ix1;
  r >>= 1;
 }

 r = sign;
 while (r != 0) {
  t1 = s1 + r;
  t = s0;
  if (t < ix0 || (t == ix0 && t1 <= ix1)) {
   s1 = t1 + r;
   if ((t1&sign) == sign && (s1&sign) == 0)
    s0++;
   ix0 -= t;
   if (ix1 < t1)
    ix0--;
   ix1 -= t1;
   q1 += r;
  }
  ix0 += ix0 + ((ix1&sign)>>31);
  ix1 += ix1;
  r >>= 1;
 }


 if ((ix0|ix1) != 0) {
  z = 1.0 - tiny;
  if (z >= 1.0) {
   z = 1.0 + tiny;
   if (q1 == (uint32_t)0xffffffff) {
    q1 = 0;
    q++;
   } else if (z > 1.0) {
    if (q1 == (uint32_t)0xfffffffe)
     q++;
    q1 += 2;
   } else
    q1 += q1 & 1;
  }
 }
 ix0 = (q>>1) + 0x3fe00000;
 ix1 = q1>>1;
 if (q&1)
  ix1 |= sign;
 ix0 += m << 20;
 INSERT_WORDS(z, ix0, ix1);
 return z;
}
