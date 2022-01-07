
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;
typedef float doublereal ;


 float dabs (float) ;
 float sqrt (float) ;

doublereal snrm2_(integer *n, real *x, integer *incx)
{

    integer i__1, i__2;
    real ret_val, r__1;


    static integer ix;
    static real ssq, norm, scale, absxi;
    --x;


    if (*n < 1 || *incx < 1) {
 norm = 0.f;
    } else if (*n == 1) {
 norm = dabs(x[1]);
    } else {
 scale = 0.f;
 ssq = 1.f;






 i__1 = (*n - 1) * *incx + 1;
 i__2 = *incx;
 for (ix = 1; i__2 < 0 ? ix >= i__1 : ix <= i__1; ix += i__2) {
     if (x[ix] != 0.f) {
  absxi = (r__1 = x[ix], dabs(r__1));
  if (scale < absxi) {

      r__1 = scale / absxi;
      ssq = ssq * (r__1 * r__1) + 1.f;
      scale = absxi;
  } else {

      r__1 = absxi / scale;
      ssq += r__1 * r__1;
  }
     }

 }
 norm = scale * sqrt(ssq);
    }

    ret_val = norm;
    return ret_val;



}
