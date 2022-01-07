
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef int doublereal ;


 int EPSILON ;
 int SAFEMINIMUM ;
 int abs (int) ;
 int d_sign (int*,int*) ;
 int dlapy2_ (int*,int*) ;

int dlarfg_(integer *n, doublereal *alpha, doublereal *x,
 integer *incx, doublereal *tau)
{

    integer i__1;
    doublereal d__1;


    static integer j, knt;
    static doublereal beta;
    extern doublereal dnrm2_(integer *, doublereal *, integer *);
    extern int dscal_(integer *, doublereal *, doublereal *,
     integer *);
    static doublereal xnorm;

    static doublereal safmin, rsafmn;
    --x;


    if (*n <= 1) {
 *tau = 0.;
 return 0;
    }

    i__1 = *n - 1;
    xnorm = dnrm2_(&i__1, &x[1], incx);

    if (xnorm == 0.) {



 *tau = 0.;
    } else {



 d__1 = dlapy2_(alpha, &xnorm);
 beta = -d_sign(&d__1, alpha);
 safmin = SAFEMINIMUM / EPSILON;
 knt = 0;
 if (abs(beta) < safmin) {



     rsafmn = 1. / safmin;
L10:
     ++knt;
     i__1 = *n - 1;
     dscal_(&i__1, &rsafmn, &x[1], incx);
     beta *= rsafmn;
     *alpha *= rsafmn;
     if (abs(beta) < safmin) {
  goto L10;
     }



     i__1 = *n - 1;
     xnorm = dnrm2_(&i__1, &x[1], incx);
     d__1 = dlapy2_(alpha, &xnorm);
     beta = -d_sign(&d__1, alpha);
 }
 *tau = (beta - *alpha) / beta;
 i__1 = *n - 1;
 d__1 = 1. / (*alpha - beta);
 dscal_(&i__1, &d__1, &x[1], incx);



 i__1 = knt;
 for (j = 1; j <= i__1; ++j) {
     beta *= safmin;

 }
 *alpha = beta;
    }

    return 0;



}
