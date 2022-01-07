
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef int doublereal ;


 int abs (int) ;

int dlassq_(integer *n, doublereal *x, integer *incx,
 doublereal *scale, doublereal *sumsq)
{

    integer i__1, i__2;
    doublereal d__1;


    static integer ix;
    static doublereal absxi;
    --x;


    if (*n > 0) {
 i__1 = (*n - 1) * *incx + 1;
 i__2 = *incx;
 for (ix = 1; i__2 < 0 ? ix >= i__1 : ix <= i__1; ix += i__2) {
     if (x[ix] != 0.) {
  absxi = (d__1 = x[ix], abs(d__1));
  if (*scale < absxi) {

      d__1 = *scale / absxi;
      *sumsq = *sumsq * (d__1 * d__1) + 1;
      *scale = absxi;
  } else {

      d__1 = absxi / *scale;
      *sumsq += d__1 * d__1;
  }
     }

 }
    }
    return 0;



}
