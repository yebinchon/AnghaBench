
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int integer ;
struct TYPE_5__ {int i; int r; } ;
typedef TYPE_1__ complex ;


 int r_cnjg (TYPE_1__*,TYPE_1__*) ;

int clacgv_(integer *n, complex *x, integer *incx)
{

    integer i__1, i__2;
    complex q__1;


    static integer i__, ioff;
    --x;


    if (*incx == 1) {
 i__1 = *n;
 for (i__ = 1; i__ <= i__1; ++i__) {
     i__2 = i__;
     r_cnjg(&q__1, &x[i__]);
     x[i__2].r = q__1.r, x[i__2].i = q__1.i;

 }
    } else {
 ioff = 1;
 if (*incx < 0) {
     ioff = 1 - (*n - 1) * *incx;
 }
 i__1 = *n;
 for (i__ = 1; i__ <= i__1; ++i__) {
     i__2 = ioff;
     r_cnjg(&q__1, &x[ioff]);
     x[i__2].r = q__1.r, x[i__2].i = q__1.i;
     ioff += *incx;

 }
    }
    return 0;



}
