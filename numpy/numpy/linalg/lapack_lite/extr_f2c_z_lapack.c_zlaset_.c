
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* logical ;
typedef int integer ;
struct TYPE_5__ {int i; int r; } ;
typedef TYPE_1__ doublecomplex ;


 int min (int,int) ;

int zlaset_(char *uplo, integer *m, integer *n,
 doublecomplex *alpha, doublecomplex *beta, doublecomplex *a, integer *
 lda)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;


    static integer i__, j;
    extern logical lsame_(char *, char *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    if (lsame_(uplo, "U")) {






 i__1 = *n;
 for (j = 2; j <= i__1; ++j) {

     i__3 = j - 1;
     i__2 = min(i__3,*m);
     for (i__ = 1; i__ <= i__2; ++i__) {
  i__3 = i__ + j * a_dim1;
  a[i__3].r = alpha->r, a[i__3].i = alpha->i;

     }

 }
 i__1 = min(*n,*m);
 for (i__ = 1; i__ <= i__1; ++i__) {
     i__2 = i__ + i__ * a_dim1;
     a[i__2].r = beta->r, a[i__2].i = beta->i;

 }

    } else if (lsame_(uplo, "L")) {






 i__1 = min(*m,*n);
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = j + 1; i__ <= i__2; ++i__) {
  i__3 = i__ + j * a_dim1;
  a[i__3].r = alpha->r, a[i__3].i = alpha->i;

     }

 }
 i__1 = min(*n,*m);
 for (i__ = 1; i__ <= i__1; ++i__) {
     i__2 = i__ + i__ * a_dim1;
     a[i__2].r = beta->r, a[i__2].i = beta->i;

 }

    } else {






 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = 1; i__ <= i__2; ++i__) {
  i__3 = i__ + j * a_dim1;
  a[i__3].r = alpha->r, a[i__3].i = alpha->i;

     }

 }
 i__1 = min(*m,*n);
 for (i__ = 1; i__ <= i__1; ++i__) {
     i__2 = i__ + i__ * a_dim1;
     a[i__2].r = beta->r, a[i__2].i = beta->i;

 }
    }

    return 0;



}
