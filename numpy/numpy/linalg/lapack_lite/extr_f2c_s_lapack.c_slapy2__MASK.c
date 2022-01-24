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
typedef  float real ;
typedef  float doublereal ;

/* Variables and functions */
 float FUNC0 (float) ; 
 float FUNC1 (float,float) ; 
 float FUNC2 (float,float) ; 
 float FUNC3 (float) ; 

doublereal FUNC4(real *x, real *y)
{
    /* System generated locals */
    real ret_val, r__1;

    /* Local variables */
    static real w, z__, xabs, yabs;


/*
    -- LAPACK auxiliary routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    SLAPY2 returns sqrt(x**2+y**2), taking care not to cause unnecessary
    overflow.

    Arguments
    =========

    X       (input) REAL
    Y       (input) REAL
            X and Y specify the values x and y.

    =====================================================================
*/


    xabs = FUNC0(*x);
    yabs = FUNC0(*y);
    w = FUNC1(xabs,yabs);
    z__ = FUNC2(xabs,yabs);
    if (z__ == 0.f) {
	ret_val = w;
    } else {
/* Computing 2nd power */
	r__1 = z__ / w;
	ret_val = w * FUNC3(r__1 * r__1 + 1.f);
    }
    return ret_val;

/*     End of SLAPY2 */

}