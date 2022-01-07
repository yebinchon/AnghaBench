
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int logical ;
typedef int integer ;
typedef int ftnlen ;
typedef void* doublereal ;
struct TYPE_5__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;


 int c__1 ;
 int c_n1 ;
 int max (int,int) ;
 int min (int,int) ;

int zunghr_(integer *n, integer *ilo, integer *ihi,
 doublecomplex *a, integer *lda, doublecomplex *tau, doublecomplex *
 work, integer *lwork, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3, i__4;


    static integer i__, j, nb, nh, iinfo;
    extern int xerbla_(char *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    static integer lwkopt;
    static logical lquery;
    extern int zungqr_(integer *, integer *, integer *,
     doublecomplex *, integer *, doublecomplex *, doublecomplex *,
     integer *, integer *);
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
 nb = ilaenv_(&c__1, "ZUNGQR", " ", &nh, &nh, &nh, &c_n1, (ftnlen)6, (
  ftnlen)1);
 lwkopt = max(1,nh) * nb;
 work[1].r = (doublereal) lwkopt, work[1].i = 0.;
    }

    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("ZUNGHR", &i__1);
 return 0;
    } else if (lquery) {
 return 0;
    }



    if (*n == 0) {
 work[1].r = 1., work[1].i = 0.;
 return 0;
    }







    i__1 = *ilo + 1;
    for (j = *ihi; j >= i__1; --j) {
 i__2 = j - 1;
 for (i__ = 1; i__ <= i__2; ++i__) {
     i__3 = i__ + j * a_dim1;
     a[i__3].r = 0., a[i__3].i = 0.;

 }
 i__2 = *ihi;
 for (i__ = j + 1; i__ <= i__2; ++i__) {
     i__3 = i__ + j * a_dim1;
     i__4 = i__ + (j - 1) * a_dim1;
     a[i__3].r = a[i__4].r, a[i__3].i = a[i__4].i;

 }
 i__2 = *n;
 for (i__ = *ihi + 1; i__ <= i__2; ++i__) {
     i__3 = i__ + j * a_dim1;
     a[i__3].r = 0., a[i__3].i = 0.;

 }

    }
    i__1 = *ilo;
    for (j = 1; j <= i__1; ++j) {
 i__2 = *n;
 for (i__ = 1; i__ <= i__2; ++i__) {
     i__3 = i__ + j * a_dim1;
     a[i__3].r = 0., a[i__3].i = 0.;

 }
 i__2 = j + j * a_dim1;
 a[i__2].r = 1., a[i__2].i = 0.;

    }
    i__1 = *n;
    for (j = *ihi + 1; j <= i__1; ++j) {
 i__2 = *n;
 for (i__ = 1; i__ <= i__2; ++i__) {
     i__3 = i__ + j * a_dim1;
     a[i__3].r = 0., a[i__3].i = 0.;

 }
 i__2 = j + j * a_dim1;
 a[i__2].r = 1., a[i__2].i = 0.;

    }

    if (nh > 0) {



 zungqr_(&nh, &nh, &nh, &a[*ilo + 1 + (*ilo + 1) * a_dim1], lda, &tau[*
  ilo], &work[1], lwork, &iinfo);
    }
    work[1].r = (doublereal) lwkopt, work[1].i = 0.;
    return 0;



}
