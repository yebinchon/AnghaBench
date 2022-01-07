
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int logical ;
typedef int integer ;
typedef int ftnlen ;


 int c__1 ;
 int c_n1 ;
 int max (int,int) ;
 int min (int,int) ;

int sorghr_(integer *n, integer *ilo, integer *ihi, real *a,
 integer *lda, real *tau, real *work, integer *lwork, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2;


    static integer i__, j, nb, nh, iinfo;
    extern int xerbla_(char *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    extern int sorgqr_(integer *, integer *, integer *, real
     *, integer *, real *, real *, integer *, integer *);
    static integer lwkopt;
    static logical lquery;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    --work;


    *info = 0;
    nh = *ihi - *ilo;
    lquery = *lwork == -1;
    if (*n < 0) {
 *info = -1;
    } else if (*ilo < 1 || *ilo > max(1,*n)) {
 *info = -2;
    } else if (*ihi < min(*ilo,*n) || *ihi > *n) {
 *info = -3;
    } else if (*lda < max(1,*n)) {
 *info = -5;
    } else if (*lwork < max(1,nh) && ! lquery) {
 *info = -8;
    }

    if (*info == 0) {
 nb = ilaenv_(&c__1, "SORGQR", " ", &nh, &nh, &nh, &c_n1, (ftnlen)6, (
  ftnlen)1);
 lwkopt = max(1,nh) * nb;
 work[1] = (real) lwkopt;
    }

    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SORGHR", &i__1);
 return 0;
    } else if (lquery) {
 return 0;
    }



    if (*n == 0) {
 work[1] = 1.f;
 return 0;
    }







    i__1 = *ilo + 1;
    for (j = *ihi; j >= i__1; --j) {
 i__2 = j - 1;
 for (i__ = 1; i__ <= i__2; ++i__) {
     a[i__ + j * a_dim1] = 0.f;

 }
 i__2 = *ihi;
 for (i__ = j + 1; i__ <= i__2; ++i__) {
     a[i__ + j * a_dim1] = a[i__ + (j - 1) * a_dim1];

 }
 i__2 = *n;
 for (i__ = *ihi + 1; i__ <= i__2; ++i__) {
     a[i__ + j * a_dim1] = 0.f;

 }

    }
    i__1 = *ilo;
    for (j = 1; j <= i__1; ++j) {
 i__2 = *n;
 for (i__ = 1; i__ <= i__2; ++i__) {
     a[i__ + j * a_dim1] = 0.f;

 }
 a[j + j * a_dim1] = 1.f;

    }
    i__1 = *n;
    for (j = *ihi + 1; j <= i__1; ++j) {
 i__2 = *n;
 for (i__ = 1; i__ <= i__2; ++i__) {
     a[i__ + j * a_dim1] = 0.f;

 }
 a[j + j * a_dim1] = 1.f;

    }

    if (nh > 0) {



 sorgqr_(&nh, &nh, &nh, &a[*ilo + 1 + (*ilo + 1) * a_dim1], lda, &tau[*
  ilo], &work[1], lwork, &iinfo);
    }
    work[1] = (real) lwkopt;
    return 0;



}
