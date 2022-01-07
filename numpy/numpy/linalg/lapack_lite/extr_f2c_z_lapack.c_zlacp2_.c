
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* logical ;
typedef int integer ;
typedef void* doublereal ;
struct TYPE_3__ {int i; void* r; } ;
typedef TYPE_1__ doublecomplex ;


 int min (int,int) ;

int zlacp2_(char *uplo, integer *m, integer *n, doublereal *
 a, integer *lda, doublecomplex *b, integer *ldb)
{

    integer a_dim1, a_offset, b_dim1, b_offset, i__1, i__2, i__3, i__4;


    static integer i__, j;
    extern logical lsame_(char *, char *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    b_dim1 = *ldb;
    b_offset = 1 + b_dim1;
    b -= b_offset;


    if (lsame_(uplo, "U")) {
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = min(j,*m);
     for (i__ = 1; i__ <= i__2; ++i__) {
  i__3 = i__ + j * b_dim1;
  i__4 = i__ + j * a_dim1;
  b[i__3].r = a[i__4], b[i__3].i = 0.;

     }

 }

    } else if (lsame_(uplo, "L")) {
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = j; i__ <= i__2; ++i__) {
  i__3 = i__ + j * b_dim1;
  i__4 = i__ + j * a_dim1;
  b[i__3].r = a[i__4], b[i__3].i = 0.;

     }

 }

    } else {
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = 1; i__ <= i__2; ++i__) {
  i__3 = i__ + j * b_dim1;
  i__4 = i__ + j * a_dim1;
  b[i__3].r = a[i__4], b[i__3].i = 0.;

     }

 }
    }

    return 0;



}
