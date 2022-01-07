
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int integer ;
struct TYPE_3__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;


 int max (int,int) ;

integer ilazlr_(integer *m, integer *n, doublecomplex *a, integer *lda)
{

    integer a_dim1, a_offset, ret_val, i__1, i__2;


    static integer i__, j;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    if (*m == 0) {
 ret_val = *m;
    } else {
 i__1 = *m + a_dim1;
 i__2 = *m + *n * a_dim1;
 if (a[i__1].r != 0. || a[i__1].i != 0. || (a[i__2].r != 0. || a[i__2]
  .i != 0.)) {
     ret_val = *m;
 } else {

     ret_val = 0;
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  for (i__ = *m; i__ >= 1; --i__) {
      i__2 = i__ + j * a_dim1;
      if (a[i__2].r != 0. || a[i__2].i != 0.) {
   goto L10;
      }
  }
L10:
  ret_val = max(ret_val,i__);
     }
 }
    }
    return ret_val;
}
