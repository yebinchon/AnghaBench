
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int integer ;


 int c__1 ;
 int c_n1 ;
 int max (int,int) ;
 int min (int,int) ;
 int slaed2_ (int*,int*,int*,int *,int *,int*,int*,int *,int *,int *,int *,int *,int*,int*,int*,int*,int*) ;
 int slaed3_ (int*,int*,int*,int *,int *,int*,int *,int *,int *,int*,int*,int *,int *,int*) ;
 int slamrg_ (int*,int*,int *,int*,int *,int*) ;

int slaed1_(integer *n, real *d__, real *q, integer *ldq,
 integer *indxq, real *rho, integer *cutpnt, real *work, integer *
 iwork, integer *info)
{

    integer q_dim1, q_offset, i__1, i__2;


    static integer i__, k, n1, n2, is, iw, iz, iq2, cpp1, indx, indxc, indxp;
    extern int scopy_(integer *, real *, integer *, real *,
     integer *), slaed2_(integer *, integer *, integer *, real *, real
     *, integer *, integer *, real *, real *, real *, real *, real *,
     integer *, integer *, integer *, integer *, integer *), slaed3_(
     integer *, integer *, integer *, real *, real *, integer *, real *
     , real *, real *, integer *, integer *, real *, real *, integer *)
     ;
    static integer idlmda;
    extern int xerbla_(char *, integer *), slamrg_(
     integer *, integer *, real *, integer *, integer *, integer *);
    static integer coltyp;
    --d__;
    q_dim1 = *ldq;
    q_offset = 1 + q_dim1;
    q -= q_offset;
    --indxq;
    --work;
    --iwork;


    *info = 0;

    if (*n < 0) {
 *info = -1;
    } else if (*ldq < max(1,*n)) {
 *info = -4;
    } else {

 i__1 = 1, i__2 = *n / 2;
 if (min(i__1,i__2) > *cutpnt || *n / 2 < *cutpnt) {
     *info = -7;
 }
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SLAED1", &i__1);
 return 0;
    }



    if (*n == 0) {
 return 0;
    }







    iz = 1;
    idlmda = iz + *n;
    iw = idlmda + *n;
    iq2 = iw + *n;

    indx = 1;
    indxc = indx + *n;
    coltyp = indxc + *n;
    indxp = coltyp + *n;







    scopy_(cutpnt, &q[*cutpnt + q_dim1], ldq, &work[iz], &c__1);
    cpp1 = *cutpnt + 1;
    i__1 = *n - *cutpnt;
    scopy_(&i__1, &q[cpp1 + cpp1 * q_dim1], ldq, &work[iz + *cutpnt], &c__1);



    slaed2_(&k, n, cutpnt, &d__[1], &q[q_offset], ldq, &indxq[1], rho, &work[
     iz], &work[idlmda], &work[iw], &work[iq2], &iwork[indx], &iwork[
     indxc], &iwork[indxp], &iwork[coltyp], info);

    if (*info != 0) {
 goto L20;
    }



    if (k != 0) {
 is = (iwork[coltyp] + iwork[coltyp + 1]) * *cutpnt + (iwork[coltyp +
  1] + iwork[coltyp + 2]) * (*n - *cutpnt) + iq2;
 slaed3_(&k, n, cutpnt, &d__[1], &q[q_offset], ldq, rho, &work[idlmda],
   &work[iq2], &iwork[indxc], &iwork[coltyp], &work[iw], &work[
  is], info);
 if (*info != 0) {
     goto L20;
 }



 n1 = k;
 n2 = *n - k;
 slamrg_(&n1, &n2, &d__[1], &c__1, &c_n1, &indxq[1]);
    } else {
 i__1 = *n;
 for (i__ = 1; i__ <= i__1; ++i__) {
     indxq[i__] = i__;

 }
    }

L20:
    return 0;



}
