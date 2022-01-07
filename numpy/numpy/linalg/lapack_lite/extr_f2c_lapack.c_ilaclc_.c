
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int integer ;
struct TYPE_3__ {float r; float i; } ;
typedef TYPE_1__ complex ;



integer ilaclc_(integer *m, integer *n, complex *a, integer *lda)
{

    integer a_dim1, a_offset, ret_val, i__1, i__2;


    static integer i__;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    if (*n == 0) {
 ret_val = *n;
    } else {
 i__1 = *n * a_dim1 + 1;
 i__2 = *m + *n * a_dim1;
 if (a[i__1].r != 0.f || a[i__1].i != 0.f || (a[i__2].r != 0.f || a[
  i__2].i != 0.f)) {
     ret_val = *n;
 } else {

     for (ret_val = *n; ret_val >= 1; --ret_val) {
  i__1 = *m;
  for (i__ = 1; i__ <= i__1; ++i__) {
      i__2 = i__ + ret_val * a_dim1;
      if (a[i__2].r != 0.f || a[i__2].i != 0.f) {
   return ret_val;
      }
  }
     }
 }
    }
    return ret_val;
}
