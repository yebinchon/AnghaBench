
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int integer ;
typedef scalar_t__ doublereal ;
struct TYPE_14__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;


 scalar_t__ SAFEMINIMUM ;
 int c__1 ;
 TYPE_1__ c_b57 ;
 int max (int,int) ;
 int min (int,int) ;
 scalar_t__ z_abs (TYPE_1__*) ;
 int z_div (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int zgeru_ (int*,int*,TYPE_1__*,TYPE_1__*,int*,TYPE_1__*,int*,TYPE_1__*,int*) ;
 int zswap_ (int*,TYPE_1__*,int*,TYPE_1__*,int*) ;

int zgetf2_(integer *m, integer *n, doublecomplex *a,
 integer *lda, integer *ipiv, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;
    doublecomplex z__1;


    static integer i__, j, jp;
    static doublereal sfmin;
    extern int zscal_(integer *, doublecomplex *,
     doublecomplex *, integer *), zgeru_(integer *, integer *,
     doublecomplex *, doublecomplex *, integer *, doublecomplex *,
     integer *, doublecomplex *, integer *), zswap_(integer *,
     doublecomplex *, integer *, doublecomplex *, integer *);

    extern int xerbla_(char *, integer *);
    extern integer izamax_(integer *, doublecomplex *, integer *);
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
 xerbla_("ZGETF2", &i__1);
 return 0;
    }



    if (*m == 0 || *n == 0) {
 return 0;
    }



    sfmin = SAFEMINIMUM;

    i__1 = min(*m,*n);
    for (j = 1; j <= i__1; ++j) {



 i__2 = *m - j + 1;
 jp = j - 1 + izamax_(&i__2, &a[j + j * a_dim1], &c__1);
 ipiv[j] = jp;
 i__2 = jp + j * a_dim1;
 if (a[i__2].r != 0. || a[i__2].i != 0.) {



     if (jp != j) {
  zswap_(n, &a[j + a_dim1], lda, &a[jp + a_dim1], lda);
     }



     if (j < *m) {
  if (z_abs(&a[j + j * a_dim1]) >= sfmin) {
      i__2 = *m - j;
      z_div(&z__1, &c_b57, &a[j + j * a_dim1]);
      zscal_(&i__2, &z__1, &a[j + 1 + j * a_dim1], &c__1);
  } else {
      i__2 = *m - j;
      for (i__ = 1; i__ <= i__2; ++i__) {
   i__3 = j + i__ + j * a_dim1;
   z_div(&z__1, &a[j + i__ + j * a_dim1], &a[j + j *
    a_dim1]);
   a[i__3].r = z__1.r, a[i__3].i = z__1.i;

      }
  }
     }

 } else if (*info == 0) {

     *info = j;
 }

 if (j < min(*m,*n)) {



     i__2 = *m - j;
     i__3 = *n - j;
     z__1.r = -1., z__1.i = -0.;
     zgeru_(&i__2, &i__3, &z__1, &a[j + 1 + j * a_dim1], &c__1, &a[j +
      (j + 1) * a_dim1], lda, &a[j + 1 + (j + 1) * a_dim1], lda)
      ;
 }

    }
    return 0;



}
