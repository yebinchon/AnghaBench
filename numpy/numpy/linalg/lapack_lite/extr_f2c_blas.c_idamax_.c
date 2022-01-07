
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef scalar_t__ doublereal ;


 scalar_t__ abs (scalar_t__) ;

integer idamax_(integer *n, doublereal *dx, integer *incx)
{

    integer ret_val, i__1;
    doublereal d__1;


    static integer i__, ix;
    static doublereal dmax__;
    --dx;


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
    dmax__ = abs(dx[1]);
    ix += *incx;
    i__1 = *n;
    for (i__ = 2; i__ <= i__1; ++i__) {
 if ((d__1 = dx[ix], abs(d__1)) <= dmax__) {
     goto L5;
 }
 ret_val = i__;
 dmax__ = (d__1 = dx[ix], abs(d__1));
L5:
 ix += *incx;

    }
    return ret_val;



L20:
    dmax__ = abs(dx[1]);
    i__1 = *n;
    for (i__ = 2; i__ <= i__1; ++i__) {
 if ((d__1 = dx[i__], abs(d__1)) <= dmax__) {
     goto L30;
 }
 ret_val = i__;
 dmax__ = (d__1 = dx[i__], abs(d__1));
L30:
 ;
    }
    return ret_val;
}
