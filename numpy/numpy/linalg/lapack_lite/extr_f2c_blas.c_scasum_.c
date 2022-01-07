
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

doublereal scasum_(integer *n, complex *cx, integer *incx)
{

    integer i__1, i__2, i__3;
    real ret_val, r__1, r__2;


    static integer i__, nincx;
    static real stemp;
    --cx;


    ret_val = 0.f;
    stemp = 0.f;
    if (*n <= 0 || *incx <= 0) {
 return ret_val;
    }
    if (*incx == 1) {
 goto L20;
    }



    nincx = *n * *incx;
    i__1 = nincx;
    i__2 = *incx;
    for (i__ = 1; i__2 < 0 ? i__ >= i__1 : i__ <= i__1; i__ += i__2) {
 i__3 = i__;
 stemp = stemp + (r__1 = cx[i__3].r, dabs(r__1)) + (r__2 = r_imag(&cx[
  i__]), dabs(r__2));

    }
    ret_val = stemp;
    return ret_val;



L20:
    i__2 = *n;
    for (i__ = 1; i__ <= i__2; ++i__) {
 i__1 = i__;
 stemp = stemp + (r__1 = cx[i__1].r, dabs(r__1)) + (r__2 = r_imag(&cx[
  i__]), dabs(r__2));

    }
    ret_val = stemp;
    return ret_val;
}
