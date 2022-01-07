
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ real ;
typedef int integer ;


 scalar_t__ dabs (scalar_t__) ;

integer isamax_(integer *n, real *sx, integer *incx)
{

    integer ret_val, i__1;
    real r__1;


    static integer i__, ix;
    static real smax;
    --sx;


    ret_val = 0;
    if (*n < 1 || *incx <= 0) {
 return ret_val;
    }
    ret_val = 1;
    if (*n == 1) {
 return ret_val;
    }
    if (*incx == 1) {
 goto L20;
    }



    ix = 1;
    smax = dabs(sx[1]);
    ix += *incx;
    i__1 = *n;
    for (i__ = 2; i__ <= i__1; ++i__) {
 if ((r__1 = sx[ix], dabs(r__1)) <= smax) {
     goto L5;
 }
 ret_val = i__;
 smax = (r__1 = sx[ix], dabs(r__1));
L5:
 ix += *incx;

    }
    return ret_val;



L20:
    smax = dabs(sx[1]);
    i__1 = *n;
    for (i__ = 2; i__ <= i__1; ++i__) {
 if ((r__1 = sx[i__], dabs(r__1)) <= smax) {
     goto L30;
 }
 ret_val = i__;
 smax = (r__1 = sx[i__], dabs(r__1));
L30:
 ;
    }
    return ret_val;
}
