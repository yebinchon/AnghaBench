
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef float real ;
typedef void* logical ;
typedef int integer ;
struct TYPE_5__ {float r; float i; } ;
typedef TYPE_1__ complex ;
typedef int VOID ;


 int c__1 ;
 TYPE_1__ c_b57 ;
 int csscal_ (int*,float*,TYPE_1__*,int*) ;
 int max (int,int) ;
 float sqrt (float) ;
 int xerbla_ (char*,int*) ;

int cpotf2_(char *uplo, integer *n, complex *a, integer *lda,
  integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;
    real r__1;
    complex q__1, q__2;


    static integer j;
    static real ajj;
    extern VOID cdotc_(complex *, integer *, complex *, integer
     *, complex *, integer *);
    extern logical lsame_(char *, char *);
    extern int cgemv_(char *, integer *, integer *, complex *
     , complex *, integer *, complex *, integer *, complex *, complex *
     , integer *);
    static logical upper;
    extern int clacgv_(integer *, complex *, integer *),
     csscal_(integer *, real *, complex *, integer *), xerbla_(char *,
     integer *);
    extern logical sisnan_(real *);
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
 xerbla_("CPOTF2", &i__1);
 return 0;
    }



    if (*n == 0) {
 return 0;
    }

    if (upper) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {



     i__2 = j + j * a_dim1;
     r__1 = a[i__2].r;
     i__3 = j - 1;
     cdotc_(&q__2, &i__3, &a[j * a_dim1 + 1], &c__1, &a[j * a_dim1 + 1]
      , &c__1);
     q__1.r = r__1 - q__2.r, q__1.i = -q__2.i;
     ajj = q__1.r;
     if (ajj <= 0.f || sisnan_(&ajj)) {
  i__2 = j + j * a_dim1;
  a[i__2].r = ajj, a[i__2].i = 0.f;
  goto L30;
     }
     ajj = sqrt(ajj);
     i__2 = j + j * a_dim1;
     a[i__2].r = ajj, a[i__2].i = 0.f;



     if (j < *n) {
  i__2 = j - 1;
  clacgv_(&i__2, &a[j * a_dim1 + 1], &c__1);
  i__2 = j - 1;
  i__3 = *n - j;
  q__1.r = -1.f, q__1.i = -0.f;
  cgemv_("Transpose", &i__2, &i__3, &q__1, &a[(j + 1) * a_dim1
   + 1], lda, &a[j * a_dim1 + 1], &c__1, &c_b57, &a[j + (
   j + 1) * a_dim1], lda);
  i__2 = j - 1;
  clacgv_(&i__2, &a[j * a_dim1 + 1], &c__1);
  i__2 = *n - j;
  r__1 = 1.f / ajj;
  csscal_(&i__2, &r__1, &a[j + (j + 1) * a_dim1], lda);
     }

 }
    } else {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {



     i__2 = j + j * a_dim1;
     r__1 = a[i__2].r;
     i__3 = j - 1;
     cdotc_(&q__2, &i__3, &a[j + a_dim1], lda, &a[j + a_dim1], lda);
     q__1.r = r__1 - q__2.r, q__1.i = -q__2.i;
     ajj = q__1.r;
     if (ajj <= 0.f || sisnan_(&ajj)) {
  i__2 = j + j * a_dim1;
  a[i__2].r = ajj, a[i__2].i = 0.f;
  goto L30;
     }
     ajj = sqrt(ajj);
     i__2 = j + j * a_dim1;
     a[i__2].r = ajj, a[i__2].i = 0.f;



     if (j < *n) {
  i__2 = j - 1;
  clacgv_(&i__2, &a[j + a_dim1], lda);
  i__2 = *n - j;
  i__3 = j - 1;
  q__1.r = -1.f, q__1.i = -0.f;
  cgemv_("No transpose", &i__2, &i__3, &q__1, &a[j + 1 + a_dim1]
   , lda, &a[j + a_dim1], lda, &c_b57, &a[j + 1 + j *
   a_dim1], &c__1);
  i__2 = j - 1;
  clacgv_(&i__2, &a[j + a_dim1], lda);
  i__2 = *n - j;
  r__1 = 1.f / ajj;
  csscal_(&i__2, &r__1, &a[j + 1 + j * a_dim1], &c__1);
     }

 }
    }
    goto L40;

L30:
    *info = j;

L40:
    return 0;



}
