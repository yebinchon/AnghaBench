
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ logical ;
typedef int integer ;
typedef int doublereal ;


 int c__1 ;
 int c_b15 ;
 int max (int,int) ;

int dlauu2_(char *uplo, integer *n, doublereal *a, integer *
 lda, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;


    static integer i__;
    static doublereal aii;
    extern doublereal ddot_(integer *, doublereal *, integer *, doublereal *,
     integer *);
    extern int dscal_(integer *, doublereal *, doublereal *,
     integer *);
    extern logical lsame_(char *, char *);
    extern int dgemv_(char *, integer *, integer *,
     doublereal *, doublereal *, integer *, doublereal *, integer *,
     doublereal *, doublereal *, integer *);
    static logical upper;
    extern int xerbla_(char *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    *info = 0;
    upper = lsame_(uplo, "U");
    if (! upper && ! lsame_(uplo, "L")) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*lda < max(1,*n)) {
 *info = -4;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("DLAUU2", &i__1);
 return 0;
    }



    if (*n == 0) {
 return 0;
    }

    if (upper) {



 i__1 = *n;
 for (i__ = 1; i__ <= i__1; ++i__) {
     aii = a[i__ + i__ * a_dim1];
     if (i__ < *n) {
  i__2 = *n - i__ + 1;
  a[i__ + i__ * a_dim1] = ddot_(&i__2, &a[i__ + i__ * a_dim1],
   lda, &a[i__ + i__ * a_dim1], lda);
  i__2 = i__ - 1;
  i__3 = *n - i__;
  dgemv_("No transpose", &i__2, &i__3, &c_b15, &a[(i__ + 1) *
   a_dim1 + 1], lda, &a[i__ + (i__ + 1) * a_dim1], lda, &
   aii, &a[i__ * a_dim1 + 1], &c__1);
     } else {
  dscal_(&i__, &aii, &a[i__ * a_dim1 + 1], &c__1);
     }

 }

    } else {



 i__1 = *n;
 for (i__ = 1; i__ <= i__1; ++i__) {
     aii = a[i__ + i__ * a_dim1];
     if (i__ < *n) {
  i__2 = *n - i__ + 1;
  a[i__ + i__ * a_dim1] = ddot_(&i__2, &a[i__ + i__ * a_dim1], &
   c__1, &a[i__ + i__ * a_dim1], &c__1);
  i__2 = *n - i__;
  i__3 = i__ - 1;
  dgemv_("Transpose", &i__2, &i__3, &c_b15, &a[i__ + 1 + a_dim1]
   , lda, &a[i__ + 1 + i__ * a_dim1], &c__1, &aii, &a[
   i__ + a_dim1], lda);
     } else {
  dscal_(&i__, &aii, &a[i__ + a_dim1], lda);
     }

 }
    }

    return 0;



}
