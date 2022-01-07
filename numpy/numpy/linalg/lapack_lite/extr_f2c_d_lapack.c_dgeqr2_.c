
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

int dgeqr2_(integer *m, integer *n, doublereal *a, integer *
 lda, doublereal *tau, doublereal *work, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;


    static integer i__, k;
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
    if (*m < 0) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*lda < max(1,*m)) {
 *info = -4;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("DGEQR2", &i__1);
 return 0;
    }

    k = min(*m,*n);

    i__1 = k;
    for (i__ = 1; i__ <= i__1; ++i__) {



 i__2 = *m - i__ + 1;

 i__3 = i__ + 1;
 dlarfg_(&i__2, &a[i__ + i__ * a_dim1], &a[min(i__3,*m) + i__ * a_dim1]
  , &c__1, &tau[i__]);
 if (i__ < *n) {



     aii = a[i__ + i__ * a_dim1];
     a[i__ + i__ * a_dim1] = 1.;
     i__2 = *m - i__ + 1;
     i__3 = *n - i__;
     dlarf_("Left", &i__2, &i__3, &a[i__ + i__ * a_dim1], &c__1, &tau[
      i__], &a[i__ + (i__ + 1) * a_dim1], lda, &work[1]);
     a[i__ + i__ * a_dim1] = aii;
 }

    }
    return 0;



}
