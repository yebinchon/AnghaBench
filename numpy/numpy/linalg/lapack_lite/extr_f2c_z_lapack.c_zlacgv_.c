
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int integer ;
struct TYPE_5__ {int i; int r; } ;
typedef TYPE_1__ doublecomplex ;


 int d_cnjg (TYPE_1__*,TYPE_1__*) ;

int zlacgv_(integer *n, doublecomplex *x, integer *incx)
{

    integer i__1, i__2;
    doublecomplex z__1;


    static integer i__, ioff;
    --x;


    if (*incx == 1) {
 i__1 = *n;
 for (i__ = 1; i__ <= i__1; ++i__) {
     i__2 = i__;
     d_cnjg(&z__1, &x[i__]);
     x[i__2].r = z__1.r, x[i__2].i = z__1.i;

 }
    } else {
 ioff = 1;
 if (*incx < 0) {
     ioff = 1 - (*n - 1) * *incx;
 }
 i__1 = *n;
 for (i__ = 1; i__ <= i__1; ++i__) {
     i__2 = ioff;
     d_cnjg(&z__1, &x[ioff]);
     x[i__2].r = z__1.r, x[i__2].i = z__1.i;
     ioff += *incx;

 }
    }
    return 0;



}
