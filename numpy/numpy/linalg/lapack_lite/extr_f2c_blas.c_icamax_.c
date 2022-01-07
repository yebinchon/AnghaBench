
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ real ;
typedef int integer ;
typedef void* doublereal ;
typedef int complex ;



integer icamax_(integer *n, complex *cx, integer *incx)
{

    integer ret_val, i__1;


    static integer i__, ix;
    static real smax;
    extern doublereal scabs1_(complex *);
    --cx;


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
    smax = scabs1_(&cx[1]);
    ix += *incx;
    i__1 = *n;
    for (i__ = 2; i__ <= i__1; ++i__) {
 if (scabs1_(&cx[ix]) <= smax) {
     goto L5;
 }
 ret_val = i__;
 smax = scabs1_(&cx[ix]);
L5:
 ix += *incx;

    }
    return ret_val;



L20:
    smax = scabs1_(&cx[1]);
    i__1 = *n;
    for (i__ = 2; i__ <= i__1; ++i__) {
 if (scabs1_(&cx[i__]) <= smax) {
     goto L30;
 }
 ret_val = i__;
 smax = scabs1_(&cx[i__]);
L30:
 ;
    }
    return ret_val;
}
