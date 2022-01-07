
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef void* logical ;
typedef scalar_t__ integer ;


 scalar_t__ c__1 ;
 int c_b15 ;
 scalar_t__ c_n1 ;
 scalar_t__ max (int,scalar_t__) ;
 int xerbla_ (char*,scalar_t__*) ;

int sgetrs_(char *trans, integer *n, integer *nrhs, real *a,
 integer *lda, integer *ipiv, real *b, integer *ldb, integer *info)
{

    integer a_dim1, a_offset, b_dim1, b_offset, i__1;


    extern logical lsame_(char *, char *);
    extern int strsm_(char *, char *, char *, char *,
     integer *, integer *, real *, real *, integer *, real *, integer *
     ), xerbla_(char *, integer *);
    static logical notran;
    extern int slaswp_(integer *, real *, integer *, integer
     *, integer *, integer *, integer *);
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
 xerbla_("SGETRS", &i__1);
 return 0;
    }



    if (*n == 0 || *nrhs == 0) {
 return 0;
    }

    if (notran) {







 slaswp_(nrhs, &b[b_offset], ldb, &c__1, n, &ipiv[1], &c__1);



 strsm_("Left", "Lower", "No transpose", "Unit", n, nrhs, &c_b15, &a[
  a_offset], lda, &b[b_offset], ldb);



 strsm_("Left", "Upper", "No transpose", "Non-unit", n, nrhs, &c_b15, &
  a[a_offset], lda, &b[b_offset], ldb);
    } else {







 strsm_("Left", "Upper", "Transpose", "Non-unit", n, nrhs, &c_b15, &a[
  a_offset], lda, &b[b_offset], ldb);



 strsm_("Left", "Lower", "Transpose", "Unit", n, nrhs, &c_b15, &a[
  a_offset], lda, &b[b_offset], ldb);



 slaswp_(nrhs, &b[b_offset], ldb, &c__1, n, &ipiv[1], &c_n1);
    }

    return 0;



}
