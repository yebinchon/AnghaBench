
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;


 int max (int,int) ;

integer ilaslr_(integer *m, integer *n, real *a, integer *lda)
{

    integer a_dim1, a_offset, ret_val, i__1;


    static integer i__, j;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    if (*m == 0) {
 ret_val = *m;
    } else if (a[*m + a_dim1] != 0.f || a[*m + *n * a_dim1] != 0.f) {
 ret_val = *m;
    } else {

 ret_val = 0;
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     for (i__ = *m; i__ >= 1; --i__) {
  if (a[i__ + j * a_dim1] != 0.f) {
      goto L10;
  }
     }
L10:
     ret_val = max(ret_val,i__);
 }
    }
    return ret_val;
}
