
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int integer ;



int sscal_(integer *n, real *sa, real *sx, integer *incx)
{

    integer i__1, i__2;


    static integer i__, m, mp1, nincx;
    --sx;


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
 sx[i__] = *sa * sx[i__];

    }
    return 0;
L20:
    m = *n % 5;
    if (m == 0) {
 goto L40;
    }
    i__2 = m;
    for (i__ = 1; i__ <= i__2; ++i__) {
 sx[i__] = *sa * sx[i__];

    }
    if (*n < 5) {
 return 0;
    }
L40:
    mp1 = m + 1;
    i__2 = *n;
    for (i__ = mp1; i__ <= i__2; i__ += 5) {
 sx[i__] = *sa * sx[i__];
 sx[i__ + 1] = *sa * sx[i__ + 1];
 sx[i__ + 2] = *sa * sx[i__ + 2];
 sx[i__ + 3] = *sa * sx[i__ + 3];
 sx[i__ + 4] = *sa * sx[i__ + 4];

    }
    return 0;
}
