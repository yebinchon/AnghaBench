
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ logical ;
typedef scalar_t__ integer ;
typedef int doublereal ;


 int c_b15 ;
 scalar_t__ max (int,scalar_t__) ;

int dpotrs_(char *uplo, integer *n, integer *nrhs,
 doublereal *a, integer *lda, doublereal *b, integer *ldb, integer *
 info)
{

    integer a_dim1, a_offset, b_dim1, b_offset, i__1;


    extern logical lsame_(char *, char *);
    extern int dtrsm_(char *, char *, char *, char *,
     integer *, integer *, doublereal *, doublereal *, integer *,
     doublereal *, integer *);
    static logical upper;
    extern int xerbla_(char *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    b_dim1 = *ldb;
    b_offset = 1 + b_dim1;
    b -= b_offset;


    *info = 0;
    upper = lsame_(uplo, "U");
    if (! upper && ! lsame_(uplo, "L")) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*nrhs < 0) {
 *info = -3;
    } else if (*lda < max(1,*n)) {
 *info = -5;
    } else if (*ldb < max(1,*n)) {
 *info = -7;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("DPOTRS", &i__1);
 return 0;
    }



    if (*n == 0 || *nrhs == 0) {
 return 0;
    }

    if (upper) {







 dtrsm_("Left", "Upper", "Transpose", "Non-unit", n, nrhs, &c_b15, &a[
  a_offset], lda, &b[b_offset], ldb);



 dtrsm_("Left", "Upper", "No transpose", "Non-unit", n, nrhs, &c_b15, &
  a[a_offset], lda, &b[b_offset], ldb);
    } else {







 dtrsm_("Left", "Lower", "No transpose", "Non-unit", n, nrhs, &c_b15, &
  a[a_offset], lda, &b[b_offset], ldb);



 dtrsm_("Left", "Lower", "Transpose", "Non-unit", n, nrhs, &c_b15, &a[
  a_offset], lda, &b[b_offset], ldb);
    }

    return 0;



}
