
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;
typedef float doublereal ;



doublereal sdot_(integer *n, real *sx, integer *incx, real *sy, integer *incy)
{

    integer i__1;
    real ret_val;


    static integer i__, m, ix, iy, mp1;
    static real stemp;
    --sy;
    --sx;


    stemp = 0.f;
    ret_val = 0.f;
    if (*n <= 0) {
 return ret_val;
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
 stemp += sx[ix] * sy[iy];
 ix += *incx;
 iy += *incy;

    }
    ret_val = stemp;
    return ret_val;
L20:
    m = *n % 5;
    if (m == 0) {
 goto L40;
    }
    i__1 = m;
    for (i__ = 1; i__ <= i__1; ++i__) {
 stemp += sx[i__] * sy[i__];

    }
    if (*n < 5) {
 goto L60;
    }
L40:
    mp1 = m + 1;
    i__1 = *n;
    for (i__ = mp1; i__ <= i__1; i__ += 5) {
 stemp = stemp + sx[i__] * sy[i__] + sx[i__ + 1] * sy[i__ + 1] + sx[
  i__ + 2] * sy[i__ + 2] + sx[i__ + 3] * sy[i__ + 3] + sx[i__ +
  4] * sy[i__ + 4];

    }
L60:
    ret_val = stemp;
    return ret_val;
}
