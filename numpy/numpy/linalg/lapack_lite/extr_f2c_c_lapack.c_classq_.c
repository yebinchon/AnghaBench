
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int real ;
typedef int integer ;
struct TYPE_4__ {float r; } ;
typedef TYPE_1__ complex ;


 int dabs (int) ;
 float r_imag (TYPE_1__*) ;

int classq_(integer *n, complex *x, integer *incx, real *
 scale, real *sumsq)
{

    integer i__1, i__2, i__3;
    real r__1;


    static integer ix;
    static real temp1;
    --x;


    if (*n > 0) {
 i__1 = (*n - 1) * *incx + 1;
 i__2 = *incx;
 for (ix = 1; i__2 < 0 ? ix >= i__1 : ix <= i__1; ix += i__2) {
     i__3 = ix;
     if (x[i__3].r != 0.f) {
  i__3 = ix;
  temp1 = (r__1 = x[i__3].r, dabs(r__1));
  if (*scale < temp1) {

      r__1 = *scale / temp1;
      *sumsq = *sumsq * (r__1 * r__1) + 1;
      *scale = temp1;
  } else {

      r__1 = temp1 / *scale;
      *sumsq += r__1 * r__1;
  }
     }
     if (r_imag(&x[ix]) != 0.f) {
  temp1 = (r__1 = r_imag(&x[ix]), dabs(r__1));
  if (*scale < temp1) {

      r__1 = *scale / temp1;
      *sumsq = *sumsq * (r__1 * r__1) + 1;
      *scale = temp1;
  } else {

      r__1 = temp1 / *scale;
      *sumsq += r__1 * r__1;
  }
     }

 }
    }

    return 0;



}
