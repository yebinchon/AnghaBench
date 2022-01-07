
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef int doublereal ;


 int c__1 ;
 int dlarfg_ (int*,int *,int *,int*,int *) ;
 int max (int,int) ;
 int min (int,int) ;
 int xerbla_ (char*,int*) ;

int dgehd2_(integer *n, integer *ilo, integer *ihi,
 doublereal *a, integer *lda, doublereal *tau, doublereal *work,
 integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;


    static integer i__;
    static doublereal aii;
    extern int dlarf_(char *, integer *, integer *,
     doublereal *, integer *, doublereal *, doublereal *, integer *,
     doublereal *), dlarfg_(integer *, doublereal *,
     doublereal *, integer *, doublereal *), xerbla_(char *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    --work;


    *info = 0;
    if (*n < 0) {
 *info = -1;
    } else if (*ilo < 1 || *ilo > max(1,*n)) {
 *info = -2;
    } else if (*ihi < min(*ilo,*n) || *ihi > *n) {
 *info = -3;
    } else if (*lda < max(1,*n)) {
 *info = -5;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("DGEHD2", &i__1);
 return 0;
    }

    i__1 = *ihi - 1;
    for (i__ = *ilo; i__ <= i__1; ++i__) {



 i__2 = *ihi - i__;

 i__3 = i__ + 2;
 dlarfg_(&i__2, &a[i__ + 1 + i__ * a_dim1], &a[min(i__3,*n) + i__ *
  a_dim1], &c__1, &tau[i__]);
 aii = a[i__ + 1 + i__ * a_dim1];
 a[i__ + 1 + i__ * a_dim1] = 1.;



 i__2 = *ihi - i__;
 dlarf_("Right", ihi, &i__2, &a[i__ + 1 + i__ * a_dim1], &c__1, &tau[
  i__], &a[(i__ + 1) * a_dim1 + 1], lda, &work[1]);



 i__2 = *ihi - i__;
 i__3 = *n - i__;
 dlarf_("Left", &i__2, &i__3, &a[i__ + 1 + i__ * a_dim1], &c__1, &tau[
  i__], &a[i__ + 1 + (i__ + 1) * a_dim1], lda, &work[1]);

 a[i__ + 1 + i__ * a_dim1] = aii;

    }

    return 0;



}
