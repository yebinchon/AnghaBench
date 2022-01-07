
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int integer ;
typedef int doublereal ;
struct TYPE_4__ {int r; } ;
typedef TYPE_1__ doublecomplex ;


 int abs (int) ;
 int d_imag (TYPE_1__*) ;
 int sqrt (int) ;

doublereal dznrm2_(integer *n, doublecomplex *x, integer *incx)
{

    integer i__1, i__2, i__3;
    doublereal ret_val, d__1;


    static integer ix;
    static doublereal ssq, temp, norm, scale;
    --x;


    if (*n < 1 || *incx < 1) {
 norm = 0.;
    } else {
 scale = 0.;
 ssq = 1.;






 i__1 = (*n - 1) * *incx + 1;
 i__2 = *incx;
 for (ix = 1; i__2 < 0 ? ix >= i__1 : ix <= i__1; ix += i__2) {
     i__3 = ix;
     if (x[i__3].r != 0.) {
  i__3 = ix;
  temp = (d__1 = x[i__3].r, abs(d__1));
  if (scale < temp) {

      d__1 = scale / temp;
      ssq = ssq * (d__1 * d__1) + 1.;
      scale = temp;
  } else {

      d__1 = temp / scale;
      ssq += d__1 * d__1;
  }
     }
     if (d_imag(&x[ix]) != 0.) {
  temp = (d__1 = d_imag(&x[ix]), abs(d__1));
  if (scale < temp) {

      d__1 = scale / temp;
      ssq = ssq * (d__1 * d__1) + 1.;
      scale = temp;
  } else {

      d__1 = temp / scale;
      ssq += d__1 * d__1;
  }
     }

 }
 norm = scale * sqrt(ssq);
    }

    ret_val = norm;
    return ret_val;



}
