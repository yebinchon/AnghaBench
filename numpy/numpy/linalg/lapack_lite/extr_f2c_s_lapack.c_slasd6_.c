
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int integer ;


 int c__0 ;
 int c__1 ;
 int c_b15 ;
 int c_n1 ;
 int dabs (int ) ;
 int dmax (int ,int ) ;
 int slamrg_ (int*,int*,int *,int*,int *,int*) ;
 int slascl_ (char*,int *,int *,int *,int *,int*,int*,int *,int*,int*) ;
 int slasd7_ (int*,int*,int*,int*,int*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int*,int*,int*,int*,int*,int*,int*,int *,int*,int *,int *,int*) ;
 int slasd8_ (int*,int*,int *,int *,int *,int *,int *,int *,int*,int *,int *,int*) ;

int slasd6_(integer *icompq, integer *nl, integer *nr,
 integer *sqre, real *d__, real *vf, real *vl, real *alpha, real *beta,
  integer *idxq, integer *perm, integer *givptr, integer *givcol,
 integer *ldgcol, real *givnum, integer *ldgnum, real *poles, real *
 difl, real *difr, real *z__, integer *k, real *c__, real *s, real *
 work, integer *iwork, integer *info)
{

    integer givcol_dim1, givcol_offset, givnum_dim1, givnum_offset,
     poles_dim1, poles_offset, i__1;
    real r__1, r__2;


    static integer i__, m, n, n1, n2, iw, idx, idxc, idxp, ivfw, ivlw;
    extern int scopy_(integer *, real *, integer *, real *,
     integer *), slasd7_(integer *, integer *, integer *, integer *,
     integer *, real *, real *, real *, real *, real *, real *, real *,
      real *, real *, real *, integer *, integer *, integer *, integer
     *, integer *, integer *, integer *, real *, integer *, real *,
     real *, integer *), slasd8_(integer *, integer *, real *, real *,
     real *, real *, real *, real *, integer *, real *, real *,
     integer *);
    static integer isigma;
    extern int xerbla_(char *, integer *), slascl_(
     char *, integer *, integer *, real *, real *, integer *, integer *
     , real *, integer *, integer *), slamrg_(integer *,
     integer *, real *, integer *, integer *, integer *);
    static real orgnrm;
    --d__;
    --vf;
    --vl;
    --idxq;
    --perm;
    givcol_dim1 = *ldgcol;
    givcol_offset = 1 + givcol_dim1;
    givcol -= givcol_offset;
    poles_dim1 = *ldgnum;
    poles_offset = 1 + poles_dim1;
    poles -= poles_offset;
    givnum_dim1 = *ldgnum;
    givnum_offset = 1 + givnum_dim1;
    givnum -= givnum_offset;
    --difl;
    --difr;
    --z__;
    --work;
    --iwork;


    *info = 0;
    n = *nl + *nr + 1;
    m = n + *sqre;

    if (*icompq < 0 || *icompq > 1) {
 *info = -1;
    } else if (*nl < 1) {
 *info = -2;
    } else if (*nr < 1) {
 *info = -3;
    } else if (*sqre < 0 || *sqre > 1) {
 *info = -4;
    } else if (*ldgcol < n) {
 *info = -14;
    } else if (*ldgnum < n) {
 *info = -16;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SLASD6", &i__1);
 return 0;
    }







    isigma = 1;
    iw = isigma + n;
    ivfw = iw + m;
    ivlw = ivfw + m;

    idx = 1;
    idxc = idx + n;
    idxp = idxc + n;






    r__1 = dabs(*alpha), r__2 = dabs(*beta);
    orgnrm = dmax(r__1,r__2);
    d__[*nl + 1] = 0.f;
    i__1 = n;
    for (i__ = 1; i__ <= i__1; ++i__) {
 if ((r__1 = d__[i__], dabs(r__1)) > orgnrm) {
     orgnrm = (r__1 = d__[i__], dabs(r__1));
 }

    }
    slascl_("G", &c__0, &c__0, &orgnrm, &c_b15, &n, &c__1, &d__[1], &n, info);
    *alpha /= orgnrm;
    *beta /= orgnrm;



    slasd7_(icompq, nl, nr, sqre, k, &d__[1], &z__[1], &work[iw], &vf[1], &
     work[ivfw], &vl[1], &work[ivlw], alpha, beta, &work[isigma], &
     iwork[idx], &iwork[idxp], &idxq[1], &perm[1], givptr, &givcol[
     givcol_offset], ldgcol, &givnum[givnum_offset], ldgnum, c__, s,
     info);



    slasd8_(icompq, k, &d__[1], &z__[1], &vf[1], &vl[1], &difl[1], &difr[1],
     ldgnum, &work[isigma], &work[iw], info);



    if (*icompq == 1) {
 scopy_(k, &d__[1], &c__1, &poles[poles_dim1 + 1], &c__1);
 scopy_(k, &work[isigma], &c__1, &poles[(poles_dim1 << 1) + 1], &c__1);
    }



    slascl_("G", &c__0, &c__0, &c_b15, &orgnrm, &n, &c__1, &d__[1], &n, info);



    n1 = *k;
    n2 = n - *k;
    slamrg_(&n1, &n2, &d__[1], &c__1, &c_n1, &idxq[1]);

    return 0;



}
