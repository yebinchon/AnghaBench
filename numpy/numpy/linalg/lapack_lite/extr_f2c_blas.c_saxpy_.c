
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;



int saxpy_(integer *n, real *sa, real *sx, integer *incx,
 real *sy, integer *incy)
{

    integer i__1;


    static integer i__, m, ix, iy, mp1;
    --sy;
    --sx;


    if (*n <= 0) {
 return 0;
    }
    if (*sa == 0.f) {
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
 sy[iy] += *sa * sx[ix];
 ix += *incx;
 iy += *incy;

    }
    return 0;
L20:
    m = *n % 4;
    if (m == 0) {
 goto L40;
    }
    i__1 = m;
    for (i__ = 1; i__ <= i__1; ++i__) {
 sy[i__] += *sa * sx[i__];

    }
    if (*n < 4) {
 return 0;
    }
L40:
    mp1 = m + 1;
    i__1 = *n;
    for (i__ = mp1; i__ <= i__1; i__ += 4) {
 sy[i__] += *sa * sx[i__];
 sy[i__ + 1] += *sa * sx[i__ + 1];
 sy[i__ + 2] += *sa * sx[i__ + 2];
 sy[i__ + 3] += *sa * sx[i__ + 3];

    }
    return 0;
}
