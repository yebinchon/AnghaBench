
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

int zlassq_(integer *n, doublecomplex *x, integer *incx,
 doublereal *scale, doublereal *sumsq)
{

    integer i__1, i__2, i__3;
    doublereal d__1;


    static integer ix;
    static doublereal temp1;
    --x;


    if (*n > 0) {
 i__1 = (*n - 1) * *incx + 1;
 i__2 = *incx;
 for (ix = 1; i__2 < 0 ? ix >= i__1 : ix <= i__1; ix += i__2) {
     i__3 = ix;
     if (x[i__3].r != 0.) {
  i__3 = ix;
  temp1 = (d__1 = x[i__3].r, abs(d__1));
  if (*scale < temp1) {

      d__1 = *scale / temp1;
      *sumsq = *sumsq * (d__1 * d__1) + 1;
      *scale = temp1;
  } else {

      d__1 = temp1 / *scale;
      *sumsq += d__1 * d__1;
  }
     }
     if (d_imag(&x[ix]) != 0.) {
  temp1 = (d__1 = d_imag(&x[ix]), abs(d__1));
  if (*scale < temp1) {

      d__1 = *scale / temp1;
      *sumsq = *sumsq * (d__1 * d__1) + 1;
      *scale = temp1;
  } else {

      d__1 = temp1 / *scale;
      *sumsq += d__1 * d__1;
  }
     }

 }
    }

    return 0;



}
