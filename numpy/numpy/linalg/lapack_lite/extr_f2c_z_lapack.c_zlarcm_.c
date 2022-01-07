
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int integer ;
typedef void* doublereal ;
struct TYPE_5__ {int i; void* r; } ;
typedef TYPE_1__ doublecomplex ;


 void* c_b1034 ;
 void* c_b328 ;
 void* d_imag (TYPE_1__*) ;

int zlarcm_(integer *m, integer *n, doublereal *a, integer *
 lda, doublecomplex *b, integer *ldb, doublecomplex *c__, integer *ldc,
  doublereal *rwork)
{

    integer a_dim1, a_offset, b_dim1, b_offset, c_dim1, c_offset, i__1, i__2,
     i__3, i__4, i__5;
    doublereal d__1;
    doublecomplex z__1;


    static integer i__, j, l;
    extern int dgemm_(char *, char *, integer *, integer *,
     integer *, doublereal *, doublereal *, integer *, doublereal *,
     integer *, doublereal *, doublereal *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    b_dim1 = *ldb;
    b_offset = 1 + b_dim1;
    b -= b_offset;
    c_dim1 = *ldc;
    c_offset = 1 + c_dim1;
    c__ -= c_offset;
    --rwork;


    if (*m == 0 || *n == 0) {
 return 0;
    }

    i__1 = *n;
    for (j = 1; j <= i__1; ++j) {
 i__2 = *m;
 for (i__ = 1; i__ <= i__2; ++i__) {
     i__3 = i__ + j * b_dim1;
     rwork[(j - 1) * *m + i__] = b[i__3].r;

 }

    }

    l = *m * *n + 1;
    dgemm_("N", "N", m, n, m, &c_b1034, &a[a_offset], lda, &rwork[1], m, &
     c_b328, &rwork[l], m);
    i__1 = *n;
    for (j = 1; j <= i__1; ++j) {
 i__2 = *m;
 for (i__ = 1; i__ <= i__2; ++i__) {
     i__3 = i__ + j * c_dim1;
     i__4 = l + (j - 1) * *m + i__ - 1;
     c__[i__3].r = rwork[i__4], c__[i__3].i = 0.;

 }

    }

    i__1 = *n;
    for (j = 1; j <= i__1; ++j) {
 i__2 = *m;
 for (i__ = 1; i__ <= i__2; ++i__) {
     rwork[(j - 1) * *m + i__] = d_imag(&b[i__ + j * b_dim1]);

 }

    }
    dgemm_("N", "N", m, n, m, &c_b1034, &a[a_offset], lda, &rwork[1], m, &
     c_b328, &rwork[l], m);
    i__1 = *n;
    for (j = 1; j <= i__1; ++j) {
 i__2 = *m;
 for (i__ = 1; i__ <= i__2; ++i__) {
     i__3 = i__ + j * c_dim1;
     i__4 = i__ + j * c_dim1;
     d__1 = c__[i__4].r;
     i__5 = l + (j - 1) * *m + i__ - 1;
     z__1.r = d__1, z__1.i = rwork[i__5];
     c__[i__3].r = z__1.r, c__[i__3].i = z__1.i;

 }

    }

    return 0;



}
