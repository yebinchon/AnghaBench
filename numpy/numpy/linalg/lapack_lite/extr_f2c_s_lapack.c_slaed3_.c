
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int integer ;
typedef void* doublereal ;


 int c__1 ;
 int c_b15 ;
 int c_b29 ;
 int max (int,int) ;
 int r_sign (int*,int*) ;
 int scopy_ (int*,int*,int*,int*,int*) ;
 int slacpy_ (char*,int*,int*,int*,int*,int*,int*) ;
 int slaed4_ (int*,int*,int*,int*,int*,int*,int*,int*) ;
 int slaset_ (char*,int*,int*,int*,int*,int*,int*) ;
 int sqrt (int) ;

int slaed3_(integer *k, integer *n, integer *n1, real *d__,
 real *q, integer *ldq, real *rho, real *dlamda, real *q2, integer *
 indx, integer *ctot, real *w, real *s, integer *info)
{

    integer q_dim1, q_offset, i__1, i__2;
    real r__1;


    static integer i__, j, n2, n12, ii, n23, iq2;
    static real temp;
    extern doublereal snrm2_(integer *, real *, integer *);
    extern int sgemm_(char *, char *, integer *, integer *,
     integer *, real *, real *, integer *, real *, integer *, real *,
     real *, integer *), scopy_(integer *, real *,
     integer *, real *, integer *), slaed4_(integer *, integer *, real
     *, real *, real *, real *, real *, integer *);
    extern doublereal slamc3_(real *, real *);
    extern int xerbla_(char *, integer *), slacpy_(
     char *, integer *, integer *, real *, integer *, real *, integer *
     ), slaset_(char *, integer *, integer *, real *, real *,
     real *, integer *);
    --d__;
    q_dim1 = *ldq;
    q_offset = 1 + q_dim1;
    q -= q_offset;
    --dlamda;
    --q2;
    --indx;
    --ctot;
    --w;
    --s;


    *info = 0;

    if (*k < 0) {
 *info = -1;
    } else if (*n < *k) {
 *info = -2;
    } else if (*ldq < max(1,*n)) {
 *info = -6;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SLAED3", &i__1);
 return 0;
    }



    if (*k == 0) {
 return 0;
    }
    i__1 = *k;
    for (i__ = 1; i__ <= i__1; ++i__) {
 dlamda[i__] = slamc3_(&dlamda[i__], &dlamda[i__]) - dlamda[i__];

    }

    i__1 = *k;
    for (j = 1; j <= i__1; ++j) {
 slaed4_(k, &j, &dlamda[1], &w[1], &q[j * q_dim1 + 1], rho, &d__[j],
  info);



 if (*info != 0) {
     goto L120;
 }

    }

    if (*k == 1) {
 goto L110;
    }
    if (*k == 2) {
 i__1 = *k;
 for (j = 1; j <= i__1; ++j) {
     w[1] = q[j * q_dim1 + 1];
     w[2] = q[j * q_dim1 + 2];
     ii = indx[1];
     q[j * q_dim1 + 1] = w[ii];
     ii = indx[2];
     q[j * q_dim1 + 2] = w[ii];

 }
 goto L110;
    }



    scopy_(k, &w[1], &c__1, &s[1], &c__1);



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
 w[i__] = r_sign(&r__1, &s[i__]);

    }



    i__1 = *k;
    for (j = 1; j <= i__1; ++j) {
 i__2 = *k;
 for (i__ = 1; i__ <= i__2; ++i__) {
     s[i__] = w[i__] / q[i__ + j * q_dim1];

 }
 temp = snrm2_(k, &s[1], &c__1);
 i__2 = *k;
 for (i__ = 1; i__ <= i__2; ++i__) {
     ii = indx[i__];
     q[i__ + j * q_dim1] = s[ii] / temp;

 }

    }



L110:

    n2 = *n - *n1;
    n12 = ctot[1] + ctot[2];
    n23 = ctot[2] + ctot[3];

    slacpy_("A", &n23, k, &q[ctot[1] + 1 + q_dim1], ldq, &s[1], &n23);
    iq2 = *n1 * n12 + 1;
    if (n23 != 0) {
 sgemm_("N", "N", &n2, k, &n23, &c_b15, &q2[iq2], &n2, &s[1], &n23, &
  c_b29, &q[*n1 + 1 + q_dim1], ldq);
    } else {
 slaset_("A", &n2, k, &c_b29, &c_b29, &q[*n1 + 1 + q_dim1], ldq);
    }

    slacpy_("A", &n12, k, &q[q_offset], ldq, &s[1], &n12);
    if (n12 != 0) {
 sgemm_("N", "N", n1, k, &n12, &c_b15, &q2[1], n1, &s[1], &n12, &c_b29,
   &q[q_offset], ldq);
    } else {
 slaset_("A", n1, k, &c_b29, &c_b29, &q[q_dim1 + 1], ldq);
    }


L120:
    return 0;



}
