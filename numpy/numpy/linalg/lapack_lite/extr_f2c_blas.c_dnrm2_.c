
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef int doublereal ;


 int abs (int) ;
 int sqrt (int) ;

doublereal dnrm2_(integer *n, doublereal *x, integer *incx)
{

    integer i__1, i__2;
    doublereal ret_val, d__1;


    static integer ix;
    static doublereal ssq, norm, scale, absxi;
    --x;


    if (*n < 1 || *incx < 1) {
 norm = 0.;
    } else if (*n == 1) {
 norm = abs(x[1]);
    } else {
 scale = 0.;
 ssq = 1.;






 i__1 = (*n - 1) * *incx + 1;
 i__2 = *incx;
 for (ix = 1; i__2 < 0 ? ix >= i__1 : ix <= i__1; ix += i__2) {
     if (x[ix] != 0.) {
  absxi = (d__1 = x[ix], abs(d__1));
  if (scale < absxi) {

      d__1 = scale / absxi;
      ssq = ssq * (d__1 * d__1) + 1.;
      scale = absxi;
  } else {

      d__1 = absxi / scale;
      ssq += d__1 * d__1;
  }
     }

 }
 norm = scale * sqrt(ssq);
    }

    ret_val = norm;
    return ret_val;



}
