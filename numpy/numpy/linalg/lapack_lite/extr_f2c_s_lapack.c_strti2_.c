
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef void* logical ;
typedef int integer ;


 int c__1 ;
 int max (int,int) ;
 int xerbla_ (char*,int*) ;

int strti2_(char *uplo, char *diag, integer *n, real *a,
 integer *lda, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2;


    static integer j;
    static real ajj;
    extern logical lsame_(char *, char *);
    extern int sscal_(integer *, real *, real *, integer *);
    static logical upper;
    extern int strmv_(char *, char *, char *, integer *,
     real *, integer *, real *, integer *),
     xerbla_(char *, integer *);
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
 xerbla_("STRTI2", &i__1);
 return 0;
    }

    if (upper) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     if (nounit) {
  a[j + j * a_dim1] = 1.f / a[j + j * a_dim1];
  ajj = -a[j + j * a_dim1];
     } else {
  ajj = -1.f;
     }



     i__2 = j - 1;
     strmv_("Upper", "No transpose", diag, &i__2, &a[a_offset], lda, &
      a[j * a_dim1 + 1], &c__1);
     i__2 = j - 1;
     sscal_(&i__2, &ajj, &a[j * a_dim1 + 1], &c__1);

 }
    } else {



 for (j = *n; j >= 1; --j) {
     if (nounit) {
  a[j + j * a_dim1] = 1.f / a[j + j * a_dim1];
  ajj = -a[j + j * a_dim1];
     } else {
  ajj = -1.f;
     }
     if (j < *n) {



  i__1 = *n - j;
  strmv_("Lower", "No transpose", diag, &i__1, &a[j + 1 + (j +
   1) * a_dim1], lda, &a[j + 1 + j * a_dim1], &c__1);
  i__1 = *n - j;
  sscal_(&i__1, &ajj, &a[j + 1 + j * a_dim1], &c__1);
     }

 }
    }

    return 0;



}
