
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef double double_t ;


 int GET_HIGH_WORD (int,double) ;
 int SET_LOW_WORD (double,int ) ;
 double* T ;
 double pio4 ;
 double pio4lo ;

double __tan(double x, double y, int odd)
{
 double_t z, r, v, w, s, a;
 double w0, a0;
 uint32_t hx;
 int big, sign;

 GET_HIGH_WORD(hx,x);
 big = (hx&0x7fffffff) >= 0x3FE59428;
 if (big) {
  sign = hx>>31;
  if (sign) {
   x = -x;
   y = -y;
  }
  x = (pio4 - x) + (pio4lo - y);
  y = 0.0;
 }
 z = x * x;
 w = z * z;





 r = T[1] + w*(T[3] + w*(T[5] + w*(T[7] + w*(T[9] + w*T[11]))));
 v = z*(T[2] + w*(T[4] + w*(T[6] + w*(T[8] + w*(T[10] + w*T[12])))));
 s = z * x;
 r = y + z*(s*(r + v) + y) + s*T[0];
 w = x + r;
 if (big) {
  s = 1 - 2*odd;
  v = s - 2.0 * (x + (r - w*w/(w + s)));
  return sign ? -v : v;
 }
 if (!odd)
  return w;

 w0 = w;
 SET_LOW_WORD(w0, 0);
 v = r - (w0 - x);
 a0 = a = -1.0 / w;
 SET_LOW_WORD(a0, 0);
 return a0 + a*(1.0 + a0*w0 + a0*v);
}
