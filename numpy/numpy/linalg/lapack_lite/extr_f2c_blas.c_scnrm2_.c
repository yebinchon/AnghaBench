
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef float real ;
typedef int integer ;
typedef float doublereal ;
struct TYPE_4__ {float r; } ;
typedef TYPE_1__ complex ;


 int dabs (float) ;
 float r_imag (TYPE_1__*) ;
 float sqrt (float) ;

doublereal scnrm2_(integer *n, complex *x, integer *incx)
{

    integer i__1, i__2, i__3;
    real ret_val, r__1;


    static integer ix;
    static real ssq, temp, norm, scale;
    --x;


    if (*n < 1 || *incx < 1) {
 norm = 0.f;
    } else {
 scale = 0.f;
 ssq = 1.f;






 i__1 = (*n - 1) * *incx + 1;
 i__2 = *incx;
 for (ix = 1; i__2 < 0 ? ix >= i__1 : ix <= i__1; ix += i__2) {
     i__3 = ix;
     if (x[i__3].r != 0.f) {
  i__3 = ix;
  temp = (r__1 = x[i__3].r, dabs(r__1));
  if (scale < temp) {

      r__1 = scale / temp;
      ssq = ssq * (r__1 * r__1) + 1.f;
      scale = temp;
  } else {

      r__1 = temp / scale;
      ssq += r__1 * r__1;
  }
     }
     if (r_imag(&x[ix]) != 0.f) {
  temp = (r__1 = r_imag(&x[ix]), dabs(r__1));
  if (scale < temp) {

      r__1 = scale / temp;
      ssq = ssq * (r__1 * r__1) + 1.f;
      scale = temp;
  } else {

      r__1 = temp / scale;
      ssq += r__1 * r__1;
  }
     }

 }
 norm = scale * sqrt(ssq);
    }

    ret_val = norm;
    return ret_val;



}
