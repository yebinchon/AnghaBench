
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int integer ;
struct TYPE_4__ {int i; int r; } ;
typedef TYPE_1__ complex ;



int cswap_(integer *n, complex *cx, integer *incx, complex *
 cy, integer *incy)
{

    integer i__1, i__2, i__3;


    static integer i__, ix, iy;
    static complex ctemp;
    --cy;
    --cx;


    if (*n <= 0) {
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
 i__2 = ix;
 ctemp.r = cx[i__2].r, ctemp.i = cx[i__2].i;
 i__2 = ix;
 i__3 = iy;
 cx[i__2].r = cy[i__3].r, cx[i__2].i = cy[i__3].i;
 i__2 = iy;
 cy[i__2].r = ctemp.r, cy[i__2].i = ctemp.i;
 ix += *incx;
 iy += *incy;

    }
    return 0;


L20:
    i__1 = *n;
    for (i__ = 1; i__ <= i__1; ++i__) {
 i__2 = i__;
 ctemp.r = cx[i__2].r, ctemp.i = cx[i__2].i;
 i__2 = i__;
 i__3 = i__;
 cx[i__2].r = cy[i__3].r, cx[i__2].i = cy[i__3].i;
 i__2 = i__;
 cy[i__2].r = ctemp.r, cy[i__2].i = ctemp.i;

    }
    return 0;
}
