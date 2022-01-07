
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef int doublereal ;


 int PRECISION ;
 int SAFEMINIMUM ;
 int abs (int) ;
 int c__0 ;
 int c__1 ;
 int c__2 ;
 int dlasrt_ (char*,int*,int*,int*) ;
 int max (int,int) ;
 int sqrt (int) ;

int dlasq1_(integer *n, doublereal *d__, doublereal *e,
 doublereal *work, integer *info)
{

    integer i__1, i__2;
    doublereal d__1, d__2, d__3;


    static integer i__;
    static doublereal eps;
    extern int dlas2_(doublereal *, doublereal *, doublereal
     *, doublereal *, doublereal *);
    static doublereal scale;
    static integer iinfo;
    static doublereal sigmn;
    extern int dcopy_(integer *, doublereal *, integer *,
     doublereal *, integer *);
    static doublereal sigmx;
    extern int dlasq2_(integer *, doublereal *, integer *);

    extern int dlascl_(char *, integer *, integer *,
     doublereal *, doublereal *, integer *, integer *, doublereal *,
     integer *, integer *);
    static doublereal safmin;
    extern int xerbla_(char *, integer *), dlasrt_(
     char *, integer *, doublereal *, integer *);
    --work;
    --e;
    --d__;


    *info = 0;
    if (*n < 0) {
 *info = -2;
 i__1 = -(*info);
 xerbla_("DLASQ1", &i__1);
 return 0;
    } else if (*n == 0) {
 return 0;
    } else if (*n == 1) {
 d__[1] = abs(d__[1]);
 return 0;
    } else if (*n == 2) {
 dlas2_(&d__[1], &e[1], &d__[2], &sigmn, &sigmx);
 d__[1] = sigmx;
 d__[2] = sigmn;
 return 0;
    }



    sigmx = 0.;
    i__1 = *n - 1;
    for (i__ = 1; i__ <= i__1; ++i__) {
 d__[i__] = (d__1 = d__[i__], abs(d__1));

 d__2 = sigmx, d__3 = (d__1 = e[i__], abs(d__1));
 sigmx = max(d__2,d__3);

    }
    d__[*n] = (d__1 = d__[*n], abs(d__1));



    if (sigmx == 0.) {
 dlasrt_("D", n, &d__[1], &iinfo);
 return 0;
    }

    i__1 = *n;
    for (i__ = 1; i__ <= i__1; ++i__) {

 d__1 = sigmx, d__2 = d__[i__];
 sigmx = max(d__1,d__2);

    }






    eps = PRECISION;
    safmin = SAFEMINIMUM;
    scale = sqrt(eps / safmin);
    dcopy_(n, &d__[1], &c__1, &work[1], &c__2);
    i__1 = *n - 1;
    dcopy_(&i__1, &e[1], &c__1, &work[2], &c__2);
    i__1 = (*n << 1) - 1;
    i__2 = (*n << 1) - 1;
    dlascl_("G", &c__0, &c__0, &sigmx, &scale, &i__1, &c__1, &work[1], &i__2,
     &iinfo);



    i__1 = (*n << 1) - 1;
    for (i__ = 1; i__ <= i__1; ++i__) {

 d__1 = work[i__];
 work[i__] = d__1 * d__1;

    }
    work[*n * 2] = 0.;

    dlasq2_(n, &work[1], info);

    if (*info == 0) {
 i__1 = *n;
 for (i__ = 1; i__ <= i__1; ++i__) {
     d__[i__] = sqrt(work[i__]);

 }
 dlascl_("G", &c__0, &c__0, &scale, &sigmx, n, &c__1, &d__[1], n, &
  iinfo);
    }

    return 0;



}
