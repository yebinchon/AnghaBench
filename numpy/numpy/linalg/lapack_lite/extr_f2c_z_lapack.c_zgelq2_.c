
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int integer ;
struct TYPE_9__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;


 int max (int,int) ;
 int min (int,int) ;
 int xerbla_ (char*,int*) ;
 int zlacgv_ (int*,TYPE_1__*,int*) ;
 int zlarfg_ (int*,TYPE_1__*,TYPE_1__*,int*,TYPE_1__*) ;

int zgelq2_(integer *m, integer *n, doublecomplex *a,
 integer *lda, doublecomplex *tau, doublecomplex *work, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;


    static integer i__, k;
    static doublecomplex alpha;
    extern int zlarf_(char *, integer *, integer *,
     doublecomplex *, integer *, doublecomplex *, doublecomplex *,
     integer *, doublecomplex *), xerbla_(char *, integer *), zlarfg_(integer *, doublecomplex *, doublecomplex *,
     integer *, doublecomplex *), zlacgv_(integer *, doublecomplex *,
     integer *);
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
 xerbla_("ZGELQ2", &i__1);
 return 0;
    }

    k = min(*m,*n);

    i__1 = k;
    for (i__ = 1; i__ <= i__1; ++i__) {



 i__2 = *n - i__ + 1;
 zlacgv_(&i__2, &a[i__ + i__ * a_dim1], lda);
 i__2 = i__ + i__ * a_dim1;
 alpha.r = a[i__2].r, alpha.i = a[i__2].i;
 i__2 = *n - i__ + 1;

 i__3 = i__ + 1;
 zlarfg_(&i__2, &alpha, &a[i__ + min(i__3,*n) * a_dim1], lda, &tau[i__]
  );
 if (i__ < *m) {



     i__2 = i__ + i__ * a_dim1;
     a[i__2].r = 1., a[i__2].i = 0.;
     i__2 = *m - i__;
     i__3 = *n - i__ + 1;
     zlarf_("Right", &i__2, &i__3, &a[i__ + i__ * a_dim1], lda, &tau[
      i__], &a[i__ + 1 + i__ * a_dim1], lda, &work[1]);
 }
 i__2 = i__ + i__ * a_dim1;
 a[i__2].r = alpha.r, a[i__2].i = alpha.i;
 i__2 = *n - i__ + 1;
 zlacgv_(&i__2, &a[i__ + i__ * a_dim1], lda);

    }
    return 0;



}
