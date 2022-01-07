
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int integer ;
struct TYPE_10__ {float r; float i; } ;
typedef TYPE_1__ complex ;


 int c__1 ;
 int clarfg_ (int*,TYPE_1__*,TYPE_1__*,int*,TYPE_1__*) ;
 int max (int,int) ;
 int min (int,int) ;
 int r_cnjg (TYPE_1__*,TYPE_1__*) ;
 int xerbla_ (char*,int*) ;

int cgeqr2_(integer *m, integer *n, complex *a, integer *lda,
  complex *tau, complex *work, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;
    complex q__1;


    static integer i__, k;
    static complex alpha;
    extern int clarf_(char *, integer *, integer *, complex *
     , integer *, complex *, complex *, integer *, complex *),
     clarfg_(integer *, complex *, complex *, integer *, complex *),
     xerbla_(char *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    --work;


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
 xerbla_("CGEQR2", &i__1);
 return 0;
    }

    k = min(*m,*n);

    i__1 = k;
    for (i__ = 1; i__ <= i__1; ++i__) {



 i__2 = *m - i__ + 1;

 i__3 = i__ + 1;
 clarfg_(&i__2, &a[i__ + i__ * a_dim1], &a[min(i__3,*m) + i__ * a_dim1]
  , &c__1, &tau[i__]);
 if (i__ < *n) {



     i__2 = i__ + i__ * a_dim1;
     alpha.r = a[i__2].r, alpha.i = a[i__2].i;
     i__2 = i__ + i__ * a_dim1;
     a[i__2].r = 1.f, a[i__2].i = 0.f;
     i__2 = *m - i__ + 1;
     i__3 = *n - i__;
     r_cnjg(&q__1, &tau[i__]);
     clarf_("Left", &i__2, &i__3, &a[i__ + i__ * a_dim1], &c__1, &q__1,
       &a[i__ + (i__ + 1) * a_dim1], lda, &work[1]);
     i__2 = i__ + i__ * a_dim1;
     a[i__2].r = alpha.r, a[i__2].i = alpha.i;
 }

    }
    return 0;



}
