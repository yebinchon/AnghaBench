#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int integer ;
typedef  scalar_t__ doublereal ;
typedef  int /*<<< orphan*/  doublecomplex ;

/* Variables and functions */

integer FUNC0(integer *n, doublecomplex *zx, integer *incx)
{
    /* System generated locals */
    integer ret_val, i__1;

    /* Local variables */
    static integer i__, ix;
    static doublereal smax;
    extern doublereal FUNC1(doublecomplex *);


/*
    Purpose
    =======

       IZAMAX finds the index of element having max. absolute value.

    Further Details
    ===============

       jack dongarra, 1/15/85.
       modified 3/93 to return if incx .le. 0.
       modified 12/3/93, array(1) declarations changed to array(*)

    =====================================================================
*/

    /* Parameter adjustments */
    --zx;

    /* Function Body */
    ret_val = 0;
    if (*n < 1 || *incx <= 0) {
	return ret_val;
    }
    ret_val = 1;
    if (*n == 1) {
	return ret_val;
    }
    if (*incx == 1) {
	goto L20;
    }

/*        code for increment not equal to 1 */

    ix = 1;
    smax = FUNC1(&zx[1]);
    ix += *incx;
    i__1 = *n;
    for (i__ = 2; i__ <= i__1; ++i__) {
	if (FUNC1(&zx[ix]) <= smax) {
	    goto L5;
	}
	ret_val = i__;
	smax = FUNC1(&zx[ix]);
L5:
	ix += *incx;
/* L10: */
    }
    return ret_val;

/*        code for increment equal to 1 */

L20:
    smax = FUNC1(&zx[1]);
    i__1 = *n;
    for (i__ = 2; i__ <= i__1; ++i__) {
	if (FUNC1(&zx[i__]) <= smax) {
	    goto L30;
	}
	ret_val = i__;
	smax = FUNC1(&zx[i__]);
L30:
	;
    }
    return ret_val;
}