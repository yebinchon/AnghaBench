
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* logical ;
typedef int integer ;
typedef int doublereal ;
struct TYPE_6__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;
typedef int VOID ;


 int c__1 ;
 TYPE_1__ c_b57 ;
 int max (int,int) ;
 int sqrt (int) ;
 int zdscal_ (int*,int*,TYPE_1__*,int*) ;
 int zlacgv_ (int*,TYPE_1__*,int*) ;

int zpotf2_(char *uplo, integer *n, doublecomplex *a,
 integer *lda, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;
    doublereal d__1;
    doublecomplex z__1, z__2;


    static integer j;
    static doublereal ajj;
    extern logical lsame_(char *, char *);
    extern VOID zdotc_(doublecomplex *, integer *,
     doublecomplex *, integer *, doublecomplex *, integer *);
    extern int zgemv_(char *, integer *, integer *,
     doublecomplex *, doublecomplex *, integer *, doublecomplex *,
     integer *, doublecomplex *, doublecomplex *, integer *);
    static logical upper;
    extern logical disnan_(doublereal *);
    extern int xerbla_(char *, integer *), zdscal_(
     integer *, doublereal *, doublecomplex *, integer *), zlacgv_(
     integer *, doublecomplex *, integer *);
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
 xerbla_("ZPOTF2", &i__1);
 return 0;
    }



    if (*n == 0) {
 return 0;
    }

    if (upper) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {



     i__2 = j + j * a_dim1;
     d__1 = a[i__2].r;
     i__3 = j - 1;
     zdotc_(&z__2, &i__3, &a[j * a_dim1 + 1], &c__1, &a[j * a_dim1 + 1]
      , &c__1);
     z__1.r = d__1 - z__2.r, z__1.i = -z__2.i;
     ajj = z__1.r;
     if (ajj <= 0. || disnan_(&ajj)) {
  i__2 = j + j * a_dim1;
  a[i__2].r = ajj, a[i__2].i = 0.;
  goto L30;
     }
     ajj = sqrt(ajj);
     i__2 = j + j * a_dim1;
     a[i__2].r = ajj, a[i__2].i = 0.;



     if (j < *n) {
  i__2 = j - 1;
  zlacgv_(&i__2, &a[j * a_dim1 + 1], &c__1);
  i__2 = j - 1;
  i__3 = *n - j;
  z__1.r = -1., z__1.i = -0.;
  zgemv_("Transpose", &i__2, &i__3, &z__1, &a[(j + 1) * a_dim1
   + 1], lda, &a[j * a_dim1 + 1], &c__1, &c_b57, &a[j + (
   j + 1) * a_dim1], lda);
  i__2 = j - 1;
  zlacgv_(&i__2, &a[j * a_dim1 + 1], &c__1);
  i__2 = *n - j;
  d__1 = 1. / ajj;
  zdscal_(&i__2, &d__1, &a[j + (j + 1) * a_dim1], lda);
     }

 }
    } else {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {



     i__2 = j + j * a_dim1;
     d__1 = a[i__2].r;
     i__3 = j - 1;
     zdotc_(&z__2, &i__3, &a[j + a_dim1], lda, &a[j + a_dim1], lda);
     z__1.r = d__1 - z__2.r, z__1.i = -z__2.i;
     ajj = z__1.r;
     if (ajj <= 0. || disnan_(&ajj)) {
  i__2 = j + j * a_dim1;
  a[i__2].r = ajj, a[i__2].i = 0.;
  goto L30;
     }
     ajj = sqrt(ajj);
     i__2 = j + j * a_dim1;
     a[i__2].r = ajj, a[i__2].i = 0.;



     if (j < *n) {
  i__2 = j - 1;
  zlacgv_(&i__2, &a[j + a_dim1], lda);
  i__2 = *n - j;
  i__3 = j - 1;
  z__1.r = -1., z__1.i = -0.;
  zgemv_("No transpose", &i__2, &i__3, &z__1, &a[j + 1 + a_dim1]
   , lda, &a[j + a_dim1], lda, &c_b57, &a[j + 1 + j *
   a_dim1], &c__1);
  i__2 = j - 1;
  zlacgv_(&i__2, &a[j + a_dim1], lda);
  i__2 = *n - j;
  d__1 = 1. / ajj;
  zdscal_(&i__2, &d__1, &a[j + 1 + j * a_dim1], &c__1);
     }

 }
    }
    goto L40;

L30:
    *info = j;

L40:
    return 0;



}
