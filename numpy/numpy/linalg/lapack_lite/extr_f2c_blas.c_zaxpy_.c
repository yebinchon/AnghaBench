
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int integer ;
typedef int doublereal ;
struct TYPE_5__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;



int zaxpy_(integer *n, doublecomplex *za, doublecomplex *zx,
 integer *incx, doublecomplex *zy, integer *incy)
{

    integer i__1, i__2, i__3, i__4;
    doublecomplex z__1, z__2;


    static integer i__, ix, iy;
    extern doublereal dcabs1_(doublecomplex *);
    --zy;
    --zx;


    if (*n <= 0) {
 return 0;
    }
    if (dcabs1_(za) == 0.) {
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
 z__2.r = za->r * zx[i__4].r - za->i * zx[i__4].i, z__2.i = za->r * zx[
  i__4].i + za->i * zx[i__4].r;
 z__1.r = zy[i__3].r + z__2.r, z__1.i = zy[i__3].i + z__2.i;
 zy[i__2].r = z__1.r, zy[i__2].i = z__1.i;
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
 z__2.r = za->r * zx[i__4].r - za->i * zx[i__4].i, z__2.i = za->r * zx[
  i__4].i + za->i * zx[i__4].r;
 z__1.r = zy[i__3].r + z__2.r, z__1.i = zy[i__3].i + z__2.i;
 zy[i__2].r = z__1.r, zy[i__2].i = z__1.i;

    }
    return 0;
}
