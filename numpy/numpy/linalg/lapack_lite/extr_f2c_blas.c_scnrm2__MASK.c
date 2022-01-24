#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  float real ;
typedef  int integer ;
typedef  float doublereal ;
struct TYPE_4__ {float r; } ;
typedef  TYPE_1__ complex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 float FUNC1 (TYPE_1__*) ; 
 float FUNC2 (float) ; 

doublereal FUNC3(integer *n, complex *x, integer *incx)
{
    /* System generated locals */
    integer i__1, i__2, i__3;
    real ret_val, r__1;

    /* Local variables */
    static integer ix;
    static real ssq, temp, norm, scale;


/*
    Purpose
    =======

    SCNRM2 returns the euclidean norm of a vector via the function
    name, so that

       SCNRM2 := sqrt( conjg( x' )*x )

    Further Details
    ===============

    -- This version written on 25-October-1982.
       Modified on 14-October-1993 to inline the call to CLASSQ.
       Sven Hammarling, Nag Ltd.

    =====================================================================
*/

    /* Parameter adjustments */
    --x;

    /* Function Body */
    if (*n < 1 || *incx < 1) {
	norm = 0.f;
    } else {
	scale = 0.f;
	ssq = 1.f;
/*
          The following loop is equivalent to this call to the LAPACK
          auxiliary routine:
          CALL CLASSQ( N, X, INCX, SCALE, SSQ )
*/

	i__1 = (*n - 1) * *incx + 1;
	i__2 = *incx;
	for (ix = 1; i__2 < 0 ? ix >= i__1 : ix <= i__1; ix += i__2) {
	    i__3 = ix;
	    if (x[i__3].r != 0.f) {
		i__3 = ix;
		temp = (r__1 = x[i__3].r, FUNC0(r__1));
		if (scale < temp) {
/* Computing 2nd power */
		    r__1 = scale / temp;
		    ssq = ssq * (r__1 * r__1) + 1.f;
		    scale = temp;
		} else {
/* Computing 2nd power */
		    r__1 = temp / scale;
		    ssq += r__1 * r__1;
		}
	    }
	    if (FUNC1(&x[ix]) != 0.f) {
		temp = (r__1 = FUNC1(&x[ix]), FUNC0(r__1));
		if (scale < temp) {
/* Computing 2nd power */
		    r__1 = scale / temp;
		    ssq = ssq * (r__1 * r__1) + 1.f;
		    scale = temp;
		} else {
/* Computing 2nd power */
		    r__1 = temp / scale;
		    ssq += r__1 * r__1;
		}
	    }
/* L10: */
	}
	norm = scale * FUNC2(ssq);
    }

    ret_val = norm;
    return ret_val;

/*     End of SCNRM2. */

}