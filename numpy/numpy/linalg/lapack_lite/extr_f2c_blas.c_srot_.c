
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int integer ;



int srot_(integer *n, real *sx, integer *incx, real *sy,
 integer *incy, real *c__, real *s)
{

    integer i__1;


    static integer i__, ix, iy;
    static real stemp;
    --sy;
    --sx;


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
 stemp = *c__ * sx[ix] + *s * sy[iy];
 sy[iy] = *c__ * sy[iy] - *s * sx[ix];
 sx[ix] = stemp;
 ix += *incx;
 iy += *incy;

    }
    return 0;



L20:
    i__1 = *n;
    for (i__ = 1; i__ <= i__1; ++i__) {
 stemp = *c__ * sx[i__] + *s * sy[i__];
 sy[i__] = *c__ * sy[i__] - *s * sx[i__];
 sx[i__] = stemp;

    }
    return 0;
}
