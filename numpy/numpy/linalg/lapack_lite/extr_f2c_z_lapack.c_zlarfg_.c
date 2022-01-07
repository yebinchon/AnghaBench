
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int integer ;
typedef int doublereal ;
struct TYPE_8__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;
typedef int VOID ;


 int EPSILON ;
 int SAFEMINIMUM ;
 int abs (int) ;
 TYPE_1__ c_b57 ;
 int d_imag (TYPE_1__*) ;
 int d_sign (int*,int*) ;
 int dznrm2_ (int*,TYPE_1__*,int*) ;

int zlarfg_(integer *n, doublecomplex *alpha, doublecomplex *
 x, integer *incx, doublecomplex *tau)
{

    integer i__1;
    doublereal d__1, d__2;
    doublecomplex z__1, z__2;


    static integer j, knt;
    static doublereal beta, alphi, alphr;
    extern int zscal_(integer *, doublecomplex *,
     doublecomplex *, integer *);
    static doublereal xnorm;
    extern doublereal dlapy3_(doublereal *, doublereal *, doublereal *),
     dznrm2_(integer *, doublecomplex *, integer *), dlamch_(char *);
    static doublereal safmin;
    extern int zdscal_(integer *, doublereal *,
     doublecomplex *, integer *);
    static doublereal rsafmn;
    extern VOID zladiv_(doublecomplex *, doublecomplex *,
      doublecomplex *);
    --x;


    if (*n <= 0) {
 tau->r = 0., tau->i = 0.;
 return 0;
    }

    i__1 = *n - 1;
    xnorm = dznrm2_(&i__1, &x[1], incx);
    alphr = alpha->r;
    alphi = d_imag(alpha);

    if (xnorm == 0. && alphi == 0.) {



 tau->r = 0., tau->i = 0.;
    } else {



 d__1 = dlapy3_(&alphr, &alphi, &xnorm);
 beta = -d_sign(&d__1, &alphr);
 safmin = SAFEMINIMUM / EPSILON;
 rsafmn = 1. / safmin;

 knt = 0;
 if (abs(beta) < safmin) {



L10:
     ++knt;
     i__1 = *n - 1;
     zdscal_(&i__1, &rsafmn, &x[1], incx);
     beta *= rsafmn;
     alphi *= rsafmn;
     alphr *= rsafmn;
     if (abs(beta) < safmin) {
  goto L10;
     }



     i__1 = *n - 1;
     xnorm = dznrm2_(&i__1, &x[1], incx);
     z__1.r = alphr, z__1.i = alphi;
     alpha->r = z__1.r, alpha->i = z__1.i;
     d__1 = dlapy3_(&alphr, &alphi, &xnorm);
     beta = -d_sign(&d__1, &alphr);
 }
 d__1 = (beta - alphr) / beta;
 d__2 = -alphi / beta;
 z__1.r = d__1, z__1.i = d__2;
 tau->r = z__1.r, tau->i = z__1.i;
 z__2.r = alpha->r - beta, z__2.i = alpha->i;
 zladiv_(&z__1, &c_b57, &z__2);
 alpha->r = z__1.r, alpha->i = z__1.i;
 i__1 = *n - 1;
 zscal_(&i__1, alpha, &x[1], incx);



 i__1 = knt;
 for (j = 1; j <= i__1; ++j) {
     beta *= safmin;

 }
 alpha->r = beta, alpha->i = 0.;
    }

    return 0;



}
