
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ integer ;
typedef int doublereal ;


 int dgetrs_ (char*,scalar_t__*,scalar_t__*,int *,scalar_t__*,scalar_t__*,int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ max (int,scalar_t__) ;
 int xerbla_ (char*,scalar_t__*) ;

int dgesv_(integer *n, integer *nrhs, doublereal *a, integer
 *lda, integer *ipiv, doublereal *b, integer *ldb, integer *info)
{

    integer a_dim1, a_offset, b_dim1, b_offset, i__1;


    extern int dgetrf_(integer *, integer *, doublereal *,
     integer *, integer *, integer *), xerbla_(char *, integer *), dgetrs_(char *, integer *, integer *, doublereal *,
     integer *, integer *, doublereal *, integer *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --ipiv;
    b_dim1 = *ldb;
    b_offset = 1 + b_dim1;
    b -= b_offset;


    *info = 0;
    if (*n < 0) {
 *info = -1;
    } else if (*nrhs < 0) {
 *info = -2;
    } else if (*lda < max(1,*n)) {
 *info = -4;
    } else if (*ldb < max(1,*n)) {
 *info = -7;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("DGESV ", &i__1);
 return 0;
    }



    dgetrf_(n, n, &a[a_offset], lda, &ipiv[1], info);
    if (*info == 0) {



 dgetrs_("No transpose", n, nrhs, &a[a_offset], lda, &ipiv[1], &b[
  b_offset], ldb, info);
    }
    return 0;



}
