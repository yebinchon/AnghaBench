
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int integer ;
typedef float doublereal ;
struct TYPE_5__ {int r; int i; } ;
typedef TYPE_1__ complex ;



int caxpy_(integer *n, complex *ca, complex *cx, integer *
 incx, complex *cy, integer *incy)
{

    integer i__1, i__2, i__3, i__4;
    complex q__1, q__2;


    static integer i__, ix, iy;
    extern doublereal scabs1_(complex *);
    --cy;
    --cx;


    if (*n <= 0) {
 return 0;
    }
    if (scabs1_(ca) == 0.f) {
 return 0;
    }
    if (*incx == 1 && *incy == 1) {
 goto L20;
    }






    ix = 1;
    iy = 1;
    if (*incx < 0) {
 ix = (-(*n) + 1) * *incx + 1;
    }
    if (*incy < 0) {
 iy = (-(*n) + 1) * *incy + 1;
    }
    i__1 = *n;
    for (i__ = 1; i__ <= i__1; ++i__) {
 i__2 = iy;
 i__3 = iy;
 i__4 = ix;
 q__2.r = ca->r * cx[i__4].r - ca->i * cx[i__4].i, q__2.i = ca->r * cx[
  i__4].i + ca->i * cx[i__4].r;
 q__1.r = cy[i__3].r + q__2.r, q__1.i = cy[i__3].i + q__2.i;
 cy[i__2].r = q__1.r, cy[i__2].i = q__1.i;
 ix += *incx;
 iy += *incy;

    }
    return 0;



L20:
    i__1 = *n;
    for (i__ = 1; i__ <= i__1; ++i__) {
 i__2 = i__;
 i__3 = i__;
 i__4 = i__;
 q__2.r = ca->r * cx[i__4].r - ca->i * cx[i__4].i, q__2.i = ca->r * cx[
  i__4].i + ca->i * cx[i__4].r;
 q__1.r = cy[i__3].r + q__2.r, q__1.i = cy[i__3].i + q__2.i;
 cy[i__2].r = q__1.r, cy[i__2].i = q__1.i;

    }
    return 0;
}
