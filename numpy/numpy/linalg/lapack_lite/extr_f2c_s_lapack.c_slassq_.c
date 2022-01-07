
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;


 int dabs (float) ;

int slassq_(integer *n, real *x, integer *incx, real *scale,
 real *sumsq)
{

    integer i__1, i__2;
    real r__1;


    static integer ix;
    static real absxi;
    --x;


    if (*n > 0) {
 i__1 = (*n - 1) * *incx + 1;
 i__2 = *incx;
 for (ix = 1; i__2 < 0 ? ix >= i__1 : ix <= i__1; ix += i__2) {
     if (x[ix] != 0.f) {
  absxi = (r__1 = x[ix], dabs(r__1));
  if (*scale < absxi) {

      r__1 = *scale / absxi;
      *sumsq = *sumsq * (r__1 * r__1) + 1;
      *scale = absxi;
  } else {

      r__1 = absxi / *scale;
      *sumsq += r__1 * r__1;
  }
     }

 }
    }
    return 0;



}
