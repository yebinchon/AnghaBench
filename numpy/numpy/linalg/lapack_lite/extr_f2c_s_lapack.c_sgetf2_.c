
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;
typedef float doublereal ;


 int c__1 ;
 float c_b151 ;
 int dabs (float) ;
 int max (int,int) ;
 int min (int,int) ;
 int sscal_ (int*,float*,float*,int*) ;

int sgetf2_(integer *m, integer *n, real *a, integer *lda,
 integer *ipiv, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;
    real r__1;


    static integer i__, j, jp;
    extern int sger_(integer *, integer *, real *, real *,
     integer *, real *, integer *, real *, integer *), sscal_(integer *
     , real *, real *, integer *);
    static real sfmin;
    extern int sswap_(integer *, real *, integer *, real *,
     integer *);
    extern doublereal slamch_(char *);
    extern int xerbla_(char *, integer *);
    extern integer isamax_(integer *, real *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --ipiv;


    *info = 0;
    if (*m < 0) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*lda < max(1,*m)) {
 *info = -4;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SGETF2", &i__1);
 return 0;
    }



    if (*m == 0 || *n == 0) {
 return 0;
    }



    sfmin = slamch_("S");

    i__1 = min(*m,*n);
    for (j = 1; j <= i__1; ++j) {



 i__2 = *m - j + 1;
 jp = j - 1 + isamax_(&i__2, &a[j + j * a_dim1], &c__1);
 ipiv[j] = jp;
 if (a[jp + j * a_dim1] != 0.f) {



     if (jp != j) {
  sswap_(n, &a[j + a_dim1], lda, &a[jp + a_dim1], lda);
     }



     if (j < *m) {
  if ((r__1 = a[j + j * a_dim1], dabs(r__1)) >= sfmin) {
      i__2 = *m - j;
      r__1 = 1.f / a[j + j * a_dim1];
      sscal_(&i__2, &r__1, &a[j + 1 + j * a_dim1], &c__1);
  } else {
      i__2 = *m - j;
      for (i__ = 1; i__ <= i__2; ++i__) {
   a[j + i__ + j * a_dim1] /= a[j + j * a_dim1];

      }
  }
     }

 } else if (*info == 0) {

     *info = j;
 }

 if (j < min(*m,*n)) {



     i__2 = *m - j;
     i__3 = *n - j;
     sger_(&i__2, &i__3, &c_b151, &a[j + 1 + j * a_dim1], &c__1, &a[j
      + (j + 1) * a_dim1], lda, &a[j + 1 + (j + 1) * a_dim1],
      lda);
 }

    }
    return 0;



}
