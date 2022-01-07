
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int integer ;
typedef void* doublereal ;
struct TYPE_3__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;



int zdscal_(integer *n, doublereal *da, doublecomplex *zx,
 integer *incx)
{

    integer i__1, i__2, i__3;
    doublecomplex z__1, z__2;


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
 z__2.r = *da, z__2.i = 0.;
 i__3 = ix;
 z__1.r = z__2.r * zx[i__3].r - z__2.i * zx[i__3].i, z__1.i = z__2.r *
  zx[i__3].i + z__2.i * zx[i__3].r;
 zx[i__2].r = z__1.r, zx[i__2].i = z__1.i;
 ix += *incx;

    }
    return 0;



L20:
    i__1 = *n;
    for (i__ = 1; i__ <= i__1; ++i__) {
 i__2 = i__;
 z__2.r = *da, z__2.i = 0.;
 i__3 = i__;
 z__1.r = z__2.r * zx[i__3].r - z__2.i * zx[i__3].i, z__1.i = z__2.r *
  zx[i__3].i + z__2.i * zx[i__3].r;
 zx[i__2].r = z__1.r, zx[i__2].i = z__1.i;

    }
    return 0;
}
