
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef scalar_t__ integer ;


 scalar_t__ max (int,scalar_t__) ;
 int sgetrf_ (scalar_t__*,scalar_t__*,int *,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int sgetrs_ (char*,scalar_t__*,scalar_t__*,int *,scalar_t__*,scalar_t__*,int *,scalar_t__*,scalar_t__*) ;

int sgesv_(integer *n, integer *nrhs, real *a, integer *lda,
 integer *ipiv, real *b, integer *ldb, integer *info)
{

    integer a_dim1, a_offset, b_dim1, b_offset, i__1;


    extern int xerbla_(char *, integer *), sgetrf_(
     integer *, integer *, real *, integer *, integer *, integer *),
     sgetrs_(char *, integer *, integer *, real *, integer *, integer *
     , real *, integer *, integer *);
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
 xerbla_("SGESV ", &i__1);
 return 0;
    }



    sgetrf_(n, n, &a[a_offset], lda, &ipiv[1], info);
    if (*info == 0) {



 sgetrs_("No transpose", n, nrhs, &a[a_offset], lda, &ipiv[1], &b[
  b_offset], ldb, info);
    }
    return 0;



}
