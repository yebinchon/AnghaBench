
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef int doublereal ;



int dscal_(integer *n, doublereal *da, doublereal *dx,
 integer *incx)
{

    integer i__1, i__2;


    static integer i__, m, mp1, nincx;
    --dx;


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
 dx[i__] = *da * dx[i__];

    }
    return 0;
L20:
    m = *n % 5;
    if (m == 0) {
 goto L40;
    }
    i__2 = m;
    for (i__ = 1; i__ <= i__2; ++i__) {
 dx[i__] = *da * dx[i__];

    }
    if (*n < 5) {
 return 0;
    }
L40:
    mp1 = m + 1;
    i__2 = *n;
    for (i__ = mp1; i__ <= i__2; i__ += 5) {
 dx[i__] = *da * dx[i__];
 dx[i__ + 1] = *da * dx[i__ + 1];
 dx[i__ + 2] = *da * dx[i__ + 2];
 dx[i__ + 3] = *da * dx[i__ + 3];
 dx[i__ + 4] = *da * dx[i__ + 4];

    }
    return 0;
}
