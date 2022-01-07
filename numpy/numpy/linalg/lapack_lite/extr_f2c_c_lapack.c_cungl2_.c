
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int integer ;
struct TYPE_12__ {float r; float i; } ;
typedef TYPE_1__ complex ;


 int clacgv_ (int*,TYPE_1__*,int*) ;
 int clarf_ (char*,int*,int*,TYPE_1__*,int*,TYPE_1__*,TYPE_1__*,int*,TYPE_1__*) ;
 int max (int,int) ;
 int r_cnjg (TYPE_1__*,TYPE_1__*) ;
 int xerbla_ (char*,int*) ;

int cungl2_(integer *m, integer *n, integer *k, complex *a,
 integer *lda, complex *tau, complex *work, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;
    complex q__1, q__2;


    static integer i__, j, l;
    extern int cscal_(integer *, complex *, complex *,
     integer *), clarf_(char *, integer *, integer *, complex *,
     integer *, complex *, complex *, integer *, complex *),
     clacgv_(integer *, complex *, integer *), xerbla_(char *, integer
     *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    --work;


    *info = 0;
    if (*m < 0) {
 *info = -1;
    } else if (*n < *m) {
 *info = -2;
    } else if (*k < 0 || *k > *m) {
 *info = -3;
    } else if (*lda < max(1,*m)) {
 *info = -5;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("CUNGL2", &i__1);
 return 0;
    }



    if (*m <= 0) {
 return 0;
    }

    if (*k < *m) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (l = *k + 1; l <= i__2; ++l) {
  i__3 = l + j * a_dim1;
  a[i__3].r = 0.f, a[i__3].i = 0.f;

     }
     if (j > *k && j <= *m) {
  i__2 = j + j * a_dim1;
  a[i__2].r = 1.f, a[i__2].i = 0.f;
     }

 }
    }

    for (i__ = *k; i__ >= 1; --i__) {



 if (i__ < *n) {
     i__1 = *n - i__;
     clacgv_(&i__1, &a[i__ + (i__ + 1) * a_dim1], lda);
     if (i__ < *m) {
  i__1 = i__ + i__ * a_dim1;
  a[i__1].r = 1.f, a[i__1].i = 0.f;
  i__1 = *m - i__;
  i__2 = *n - i__ + 1;
  r_cnjg(&q__1, &tau[i__]);
  clarf_("Right", &i__1, &i__2, &a[i__ + i__ * a_dim1], lda, &
   q__1, &a[i__ + 1 + i__ * a_dim1], lda, &work[1]);
     }
     i__1 = *n - i__;
     i__2 = i__;
     q__1.r = -tau[i__2].r, q__1.i = -tau[i__2].i;
     cscal_(&i__1, &q__1, &a[i__ + (i__ + 1) * a_dim1], lda);
     i__1 = *n - i__;
     clacgv_(&i__1, &a[i__ + (i__ + 1) * a_dim1], lda);
 }
 i__1 = i__ + i__ * a_dim1;
 r_cnjg(&q__2, &tau[i__]);
 q__1.r = 1.f - q__2.r, q__1.i = 0.f - q__2.i;
 a[i__1].r = q__1.r, a[i__1].i = q__1.i;



 i__1 = i__ - 1;
 for (l = 1; l <= i__1; ++l) {
     i__2 = i__ + l * a_dim1;
     a[i__2].r = 0.f, a[i__2].i = 0.f;

 }

    }
    return 0;



}
