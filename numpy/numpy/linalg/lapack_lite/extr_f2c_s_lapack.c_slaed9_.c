
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int integer ;
typedef void* doublereal ;


 int c__1 ;
 int max (int,int) ;
 int r_sign (int*,int*) ;
 int slaed4_ (int*,int*,int*,int*,int*,int*,int*,int*) ;
 int sqrt (int) ;

int slaed9_(integer *k, integer *kstart, integer *kstop,
 integer *n, real *d__, real *q, integer *ldq, real *rho, real *dlamda,
  real *w, real *s, integer *lds, integer *info)
{

    integer q_dim1, q_offset, s_dim1, s_offset, i__1, i__2;
    real r__1;


    static integer i__, j;
    static real temp;
    extern doublereal snrm2_(integer *, real *, integer *);
    extern int scopy_(integer *, real *, integer *, real *,
     integer *), slaed4_(integer *, integer *, real *, real *, real *,
     real *, real *, integer *);
    extern doublereal slamc3_(real *, real *);
    extern int xerbla_(char *, integer *);
    --d__;
    q_dim1 = *ldq;
    q_offset = 1 + q_dim1;
    q -= q_offset;
    --dlamda;
    --w;
    s_dim1 = *lds;
    s_offset = 1 + s_dim1;
    s -= s_offset;


    *info = 0;

    if (*k < 0) {
 *info = -1;
    } else if (*kstart < 1 || *kstart > max(1,*k)) {
 *info = -2;
    } else if (max(1,*kstop) < *kstart || *kstop > max(1,*k)) {
 *info = -3;
    } else if (*n < *k) {
 *info = -4;
    } else if (*ldq < max(1,*k)) {
 *info = -7;
    } else if (*lds < max(1,*k)) {
 *info = -12;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SLAED9", &i__1);
 return 0;
    }



    if (*k == 0) {
 return 0;
    }
    i__1 = *n;
    for (i__ = 1; i__ <= i__1; ++i__) {
 dlamda[i__] = slamc3_(&dlamda[i__], &dlamda[i__]) - dlamda[i__];

    }

    i__1 = *kstop;
    for (j = *kstart; j <= i__1; ++j) {
 slaed4_(k, &j, &dlamda[1], &w[1], &q[j * q_dim1 + 1], rho, &d__[j],
  info);



 if (*info != 0) {
     goto L120;
 }

    }

    if (*k == 1 || *k == 2) {
 i__1 = *k;
 for (i__ = 1; i__ <= i__1; ++i__) {
     i__2 = *k;
     for (j = 1; j <= i__2; ++j) {
  s[j + i__ * s_dim1] = q[j + i__ * q_dim1];

     }

 }
 goto L120;
    }



    scopy_(k, &w[1], &c__1, &s[s_offset], &c__1);



    i__1 = *ldq + 1;
    scopy_(k, &q[q_offset], &i__1, &w[1], &c__1);
    i__1 = *k;
    for (j = 1; j <= i__1; ++j) {
 i__2 = j - 1;
 for (i__ = 1; i__ <= i__2; ++i__) {
     w[i__] *= q[i__ + j * q_dim1] / (dlamda[i__] - dlamda[j]);

 }
 i__2 = *k;
 for (i__ = j + 1; i__ <= i__2; ++i__) {
     w[i__] *= q[i__ + j * q_dim1] / (dlamda[i__] - dlamda[j]);

 }

    }
    i__1 = *k;
    for (i__ = 1; i__ <= i__1; ++i__) {
 r__1 = sqrt(-w[i__]);
 w[i__] = r_sign(&r__1, &s[i__ + s_dim1]);

    }



    i__1 = *k;
    for (j = 1; j <= i__1; ++j) {
 i__2 = *k;
 for (i__ = 1; i__ <= i__2; ++i__) {
     q[i__ + j * q_dim1] = w[i__] / q[i__ + j * q_dim1];

 }
 temp = snrm2_(k, &q[j * q_dim1 + 1], &c__1);
 i__2 = *k;
 for (i__ = 1; i__ <= i__2; ++i__) {
     s[i__ + j * s_dim1] = q[i__ + j * q_dim1] / temp;

 }

    }

L120:
    return 0;



}
