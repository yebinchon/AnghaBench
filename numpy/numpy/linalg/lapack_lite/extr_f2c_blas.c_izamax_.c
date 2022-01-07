
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef scalar_t__ doublereal ;
typedef int doublecomplex ;



integer izamax_(integer *n, doublecomplex *zx, integer *incx)
{

    integer ret_val, i__1;


    static integer i__, ix;
    static doublereal smax;
    extern doublereal dcabs1_(doublecomplex *);
    --zx;


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
    smax = dcabs1_(&zx[1]);
    ix += *incx;
    i__1 = *n;
    for (i__ = 2; i__ <= i__1; ++i__) {
 if (dcabs1_(&zx[ix]) <= smax) {
     goto L5;
 }
 ret_val = i__;
 smax = dcabs1_(&zx[ix]);
L5:
 ix += *incx;

    }
    return ret_val;



L20:
    smax = dcabs1_(&zx[1]);
    i__1 = *n;
    for (i__ = 2; i__ <= i__1; ++i__) {
 if (dcabs1_(&zx[i__]) <= smax) {
     goto L30;
 }
 ret_val = i__;
 smax = dcabs1_(&zx[i__]);
L30:
 ;
    }
    return ret_val;
}
