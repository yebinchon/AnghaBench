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
typedef  int doublereal ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int) ; 

doublereal FUNC4(doublereal *x, doublereal *y)
{
    /* System generated locals */
    doublereal ret_val, d__1;

    /* Local variables */
    static doublereal w, z__, xabs, yabs;


/*
    -- LAPACK auxiliary routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    DLAPY2 returns sqrt(x**2+y**2), taking care not to cause unnecessary
    overflow.

    Arguments
    =========

    X       (input) DOUBLE PRECISION
    Y       (input) DOUBLE PRECISION
            X and Y specify the values x and y.

    =====================================================================
*/


    xabs = FUNC0(*x);
    yabs = FUNC0(*y);
    w = FUNC1(xabs,yabs);
    z__ = FUNC2(xabs,yabs);
    if (z__ == 0.) {
	ret_val = w;
    } else {
/* Computing 2nd power */
	d__1 = z__ / w;
	ret_val = w * FUNC3(d__1 * d__1 + 1.);
    }
    return ret_val;

/*     End of DLAPY2 */

}