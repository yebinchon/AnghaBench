
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ integer ;
typedef int doublecomplex ;


 scalar_t__ max (int,scalar_t__) ;
 int zgetrf_ (scalar_t__*,scalar_t__*,int *,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int zgetrs_ (char*,scalar_t__*,scalar_t__*,int *,scalar_t__*,scalar_t__*,int *,scalar_t__*,scalar_t__*) ;

int zgesv_(integer *n, integer *nrhs, doublecomplex *a,
 integer *lda, integer *ipiv, doublecomplex *b, integer *ldb, integer *
 info)
{

    integer a_dim1, a_offset, b_dim1, b_offset, i__1;


    extern int xerbla_(char *, integer *), zgetrf_(
     integer *, integer *, doublecomplex *, integer *, integer *,
     integer *), zgetrs_(char *, integer *, integer *, doublecomplex *,
      integer *, integer *, doublecomplex *, integer *, integer *);
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
 xerbla_("ZGESV ", &i__1);
 return 0;
    }



    zgetrf_(n, n, &a[a_offset], lda, &ipiv[1], info);
    if (*info == 0) {



 zgetrs_("No transpose", n, nrhs, &a[a_offset], lda, &ipiv[1], &b[
  b_offset], ldb, info);
    }
    return 0;



}
