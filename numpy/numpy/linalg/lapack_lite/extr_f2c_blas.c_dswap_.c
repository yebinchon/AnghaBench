
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef int doublereal ;



int dswap_(integer *n, doublereal *dx, integer *incx,
 doublereal *dy, integer *incy)
{

    integer i__1;


    static integer i__, m, ix, iy, mp1;
    static doublereal dtemp;
    --dy;
    --dx;


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
 dtemp = dx[ix];
 dx[ix] = dy[iy];
 dy[iy] = dtemp;
 ix += *incx;
 iy += *incy;

    }
    return 0;
L20:
    m = *n % 3;
    if (m == 0) {
 goto L40;
    }
    i__1 = m;
    for (i__ = 1; i__ <= i__1; ++i__) {
 dtemp = dx[i__];
 dx[i__] = dy[i__];
 dy[i__] = dtemp;

    }
    if (*n < 3) {
 return 0;
    }
L40:
    mp1 = m + 1;
    i__1 = *n;
    for (i__ = mp1; i__ <= i__1; i__ += 3) {
 dtemp = dx[i__];
 dx[i__] = dy[i__];
 dy[i__] = dtemp;
 dtemp = dx[i__ + 1];
 dx[i__ + 1] = dy[i__ + 1];
 dy[i__ + 1] = dtemp;
 dtemp = dx[i__ + 2];
 dx[i__ + 2] = dy[i__ + 2];
 dy[i__ + 2] = dtemp;

    }
    return 0;
}
