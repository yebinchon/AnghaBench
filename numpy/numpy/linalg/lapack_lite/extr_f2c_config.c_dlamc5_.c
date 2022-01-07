
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ logical ;
typedef int integer ;
typedef int doublereal ;


 int c_b32 ;

int dlamc5_(integer *beta, integer *p, integer *emin,
 logical *ieee, integer *emax, doublereal *rmax)
{

    integer i__1;
    doublereal d__1;


    static integer i__;
    static doublereal y, z__;
    static integer try__, lexp;
    static doublereal oldy;
    static integer uexp, nbits;
    extern doublereal dlamc3_(doublereal *, doublereal *);
    static doublereal recbas;
    static integer exbits, expsum;
    lexp = 1;
    exbits = 1;
L10:
    try__ = lexp << 1;
    if (try__ <= -(*emin)) {
 lexp = try__;
 ++exbits;
 goto L10;
    }
    if (lexp == -(*emin)) {
 uexp = lexp;
    } else {
 uexp = try__;
 ++exbits;
    }







    if (uexp + *emin > -lexp - *emin) {
 expsum = lexp << 1;
    } else {
 expsum = uexp << 1;
    }






    *emax = expsum + *emin - 1;
    nbits = exbits + 1 + *p;






    if (nbits % 2 == 1 && *beta == 2) {
 --(*emax);
    }

    if (*ieee) {






 --(*emax);
    }
    recbas = 1. / *beta;
    z__ = *beta - 1.;
    y = 0.;
    i__1 = *p;
    for (i__ = 1; i__ <= i__1; ++i__) {
 z__ *= recbas;
 if (y < 1.) {
     oldy = y;
 }
 y = dlamc3_(&y, &z__);

    }
    if (y >= 1.) {
 y = oldy;
    }



    i__1 = *emax;
    for (i__ = 1; i__ <= i__1; ++i__) {
 d__1 = y * *beta;
 y = dlamc3_(&d__1, &c_b32);

    }

    *rmax = y;
    return 0;



}
