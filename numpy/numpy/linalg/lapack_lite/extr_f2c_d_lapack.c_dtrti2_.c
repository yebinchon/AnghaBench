
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* logical ;
typedef int integer ;
typedef int doublereal ;


 int c__1 ;
 int max (int,int) ;
 int xerbla_ (char*,int*) ;

int dtrti2_(char *uplo, char *diag, integer *n, doublereal *
 a, integer *lda, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2;


    static integer j;
    static doublereal ajj;
    extern int dscal_(integer *, doublereal *, doublereal *,
     integer *);
    extern logical lsame_(char *, char *);
    static logical upper;
    extern int dtrmv_(char *, char *, char *, integer *,
     doublereal *, integer *, doublereal *, integer *), xerbla_(char *, integer *);
    static logical nounit;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    *info = 0;
    upper = lsame_(uplo, "U");
    nounit = lsame_(diag, "N");
    if (! upper && ! lsame_(uplo, "L")) {
 *info = -1;
    } else if (! nounit && ! lsame_(diag, "U")) {
 *info = -2;
    } else if (*n < 0) {
 *info = -3;
    } else if (*lda < max(1,*n)) {
 *info = -5;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("DTRTI2", &i__1);
 return 0;
    }

    if (upper) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     if (nounit) {
  a[j + j * a_dim1] = 1. / a[j + j * a_dim1];
  ajj = -a[j + j * a_dim1];
     } else {
  ajj = -1.;
     }



     i__2 = j - 1;
     dtrmv_("Upper", "No transpose", diag, &i__2, &a[a_offset], lda, &
      a[j * a_dim1 + 1], &c__1);
     i__2 = j - 1;
     dscal_(&i__2, &ajj, &a[j * a_dim1 + 1], &c__1);

 }
    } else {



 for (j = *n; j >= 1; --j) {
     if (nounit) {
  a[j + j * a_dim1] = 1. / a[j + j * a_dim1];
  ajj = -a[j + j * a_dim1];
     } else {
  ajj = -1.;
     }
     if (j < *n) {



  i__1 = *n - j;
  dtrmv_("Lower", "No transpose", diag, &i__1, &a[j + 1 + (j +
   1) * a_dim1], lda, &a[j + 1 + j * a_dim1], &c__1);
  i__1 = *n - j;
  dscal_(&i__1, &ajj, &a[j + 1 + j * a_dim1], &c__1);
     }

 }
    }

    return 0;



}
