
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int integer ;
struct TYPE_4__ {int r; int i; } ;
typedef TYPE_1__ complex ;



int cscal_(integer *n, complex *ca, complex *cx, integer *
 incx)
{

    integer i__1, i__2, i__3, i__4;
    complex q__1;


    static integer i__, nincx;
    --cx;


    if (*n <= 0 || *incx <= 0) {
 return 0;
    }
    if (*incx == 1) {
 goto L20;
    }



    nincx = *n * *incx;
    i__1 = nincx;
    i__2 = *incx;
    for (i__ = 1; i__2 < 0 ? i__ >= i__1 : i__ <= i__1; i__ += i__2) {
 i__3 = i__;
 i__4 = i__;
 q__1.r = ca->r * cx[i__4].r - ca->i * cx[i__4].i, q__1.i = ca->r * cx[
  i__4].i + ca->i * cx[i__4].r;
 cx[i__3].r = q__1.r, cx[i__3].i = q__1.i;

    }
    return 0;



L20:
    i__2 = *n;
    for (i__ = 1; i__ <= i__2; ++i__) {
 i__1 = i__;
 i__3 = i__;
 q__1.r = ca->r * cx[i__3].r - ca->i * cx[i__3].i, q__1.i = ca->r * cx[
  i__3].i + ca->i * cx[i__3].r;
 cx[i__1].r = q__1.r, cx[i__1].i = q__1.i;

    }
    return 0;
}
