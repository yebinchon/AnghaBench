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
typedef  int integer ;
typedef  float doublereal ;

/* Variables and functions */
 float FUNC0 (float) ; 
 float FUNC1 (float) ; 

doublereal FUNC2(integer *n, real *x, integer *incx)
{
    /* System generated locals */
    integer i__1, i__2;
    real ret_val, r__1;

    /* Local variables */
    static integer ix;
    static real ssq, norm, scale, absxi;


/*
    Purpose
    =======

    SNRM2 returns the euclidean norm of a vector via the function
    name, so that

       SNRM2 := sqrt( x'*x ).

    Further Details
    ===============

    -- This version written on 25-October-1982.
       Modified on 14-October-1993 to inline the call to SLASSQ.
       Sven Hammarling, Nag Ltd.

    =====================================================================
*/

    /* Parameter adjustments */
    --x;

    /* Function Body */
    if (*n < 1 || *incx < 1) {
	norm = 0.f;
    } else if (*n == 1) {
	norm = FUNC0(x[1]);
    } else {
	scale = 0.f;
	ssq = 1.f;
/*
          The following loop is equivalent to this call to the LAPACK
          auxiliary routine:
          CALL SLASSQ( N, X, INCX, SCALE, SSQ )
*/

	i__1 = (*n - 1) * *incx + 1;
	i__2 = *incx;
	for (ix = 1; i__2 < 0 ? ix >= i__1 : ix <= i__1; ix += i__2) {
	    if (x[ix] != 0.f) {
		absxi = (r__1 = x[ix], FUNC0(r__1));
		if (scale < absxi) {
/* Computing 2nd power */
		    r__1 = scale / absxi;
		    ssq = ssq * (r__1 * r__1) + 1.f;
		    scale = absxi;
		} else {
/* Computing 2nd power */
		    r__1 = absxi / scale;
		    ssq += r__1 * r__1;
		}
	    }
/* L10: */
	}
	norm = scale * FUNC1(ssq);
    }

    ret_val = norm;
    return ret_val;

/*     End of SNRM2. */

}