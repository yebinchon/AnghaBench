
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* logical ;
typedef scalar_t__ integer ;
typedef int doublecomplex ;


 scalar_t__ c__1 ;
 int c_b57 ;
 scalar_t__ c_n1 ;
 scalar_t__ max (int,scalar_t__) ;
 int xerbla_ (char*,scalar_t__*) ;

int zgetrs_(char *trans, integer *n, integer *nrhs,
 doublecomplex *a, integer *lda, integer *ipiv, doublecomplex *b,
 integer *ldb, integer *info)
{

    integer a_dim1, a_offset, b_dim1, b_offset, i__1;


    extern logical lsame_(char *, char *);
    extern int ztrsm_(char *, char *, char *, char *,
     integer *, integer *, doublecomplex *, doublecomplex *, integer *,
      doublecomplex *, integer *),
     xerbla_(char *, integer *);
    static logical notran;
    extern int zlaswp_(integer *, doublecomplex *, integer *,
      integer *, integer *, integer *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --ipiv;
    b_dim1 = *ldb;
    b_offset = 1 + b_dim1;
    b -= b_offset;


    *info = 0;
    notran = lsame_(trans, "N");
    if (! notran && ! lsame_(trans, "T") && ! lsame_(
     trans, "C")) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*nrhs < 0) {
 *info = -3;
    } else if (*lda < max(1,*n)) {
 *info = -5;
    } else if (*ldb < max(1,*n)) {
 *info = -8;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("ZGETRS", &i__1);
 return 0;
    }



    if (*n == 0 || *nrhs == 0) {
 return 0;
    }

    if (notran) {







 zlaswp_(nrhs, &b[b_offset], ldb, &c__1, n, &ipiv[1], &c__1);



 ztrsm_("Left", "Lower", "No transpose", "Unit", n, nrhs, &c_b57, &a[
  a_offset], lda, &b[b_offset], ldb);



 ztrsm_("Left", "Upper", "No transpose", "Non-unit", n, nrhs, &c_b57, &
  a[a_offset], lda, &b[b_offset], ldb);
    } else {







 ztrsm_("Left", "Upper", trans, "Non-unit", n, nrhs, &c_b57, &a[
  a_offset], lda, &b[b_offset], ldb);



 ztrsm_("Left", "Lower", trans, "Unit", n, nrhs, &c_b57, &a[a_offset],
  lda, &b[b_offset], ldb);



 zlaswp_(nrhs, &b[b_offset], ldb, &c__1, n, &ipiv[1], &c_n1);
    }

    return 0;



}
