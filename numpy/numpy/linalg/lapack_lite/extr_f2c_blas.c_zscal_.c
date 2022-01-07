
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int integer ;
struct TYPE_4__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;



int zscal_(integer *n, doublecomplex *za, doublecomplex *zx,
 integer *incx)
{

    integer i__1, i__2, i__3;
    doublecomplex z__1;


    static integer i__, ix;
    --zx;


    if (*n <= 0 || *incx <= 0) {
 return 0;
    }
    if (*incx == 1) {
 goto L20;
    }



    ix = 1;
    i__1 = *n;
    for (i__ = 1; i__ <= i__1; ++i__) {
 i__2 = ix;
 i__3 = ix;
 z__1.r = za->r * zx[i__3].r - za->i * zx[i__3].i, z__1.i = za->r * zx[
  i__3].i + za->i * zx[i__3].r;
 zx[i__2].r = z__1.r, zx[i__2].i = z__1.i;
 ix += *incx;

    }
    return 0;



L20:
    i__1 = *n;
    for (i__ = 1; i__ <= i__1; ++i__) {
 i__2 = i__;
 i__3 = i__;
 z__1.r = za->r * zx[i__3].r - za->i * zx[i__3].i, z__1.i = za->r * zx[
  i__3].i + za->i * zx[i__3].r;
 zx[i__2].r = z__1.r, zx[i__2].i = z__1.i;

    }
    return 0;
}
