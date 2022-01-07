
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef int doublereal ;



int dlamc4_(integer *emin, doublereal *start, integer *base)
{

    integer i__1;
    doublereal d__1;


    static doublereal a;
    static integer i__;
    static doublereal b1, b2, c1, c2, d1, d2, one, zero, rbase;
    extern doublereal dlamc3_(doublereal *, doublereal *);
    a = *start;
    one = 1.;
    rbase = one / *base;
    zero = 0.;
    *emin = 1;
    d__1 = a * rbase;
    b1 = dlamc3_(&d__1, &zero);
    c1 = a;
    c2 = a;
    d1 = a;
    d2 = a;




L10:
    if (c1 == a && c2 == a && d1 == a && d2 == a) {
 --(*emin);
 a = b1;
 d__1 = a / *base;
 b1 = dlamc3_(&d__1, &zero);
 d__1 = b1 * *base;
 c1 = dlamc3_(&d__1, &zero);
 d1 = zero;
 i__1 = *base;
 for (i__ = 1; i__ <= i__1; ++i__) {
     d1 += b1;

 }
 d__1 = a * rbase;
 b2 = dlamc3_(&d__1, &zero);
 d__1 = b2 / rbase;
 c2 = dlamc3_(&d__1, &zero);
 d2 = zero;
 i__1 = *base;
 for (i__ = 1; i__ <= i__1; ++i__) {
     d2 += b2;

 }
 goto L10;
    }


    return 0;



}
