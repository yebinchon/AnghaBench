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

/* Variables and functions */
 float FUNC0 (float) ; 
 float FUNC1 (float,float) ; 
 float FUNC2 (float,float) ; 
 float FUNC3 (float) ; 

int FUNC4(real *f, real *g, real *h__, real *ssmin, real *
	ssmax)
{
    /* System generated locals */
    real r__1, r__2;

    /* Local variables */
    static real c__, fa, ga, ha, as, at, au, fhmn, fhmx;


/*
    -- LAPACK auxiliary routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    SLAS2  computes the singular values of the 2-by-2 matrix
       [  F   G  ]
       [  0   H  ].
    On return, SSMIN is the smaller singular value and SSMAX is the
    larger singular value.

    Arguments
    =========

    F       (input) REAL
            The (1,1) element of the 2-by-2 matrix.

    G       (input) REAL
            The (1,2) element of the 2-by-2 matrix.

    H       (input) REAL
            The (2,2) element of the 2-by-2 matrix.

    SSMIN   (output) REAL
            The smaller singular value.

    SSMAX   (output) REAL
            The larger singular value.

    Further Details
    ===============

    Barring over/underflow, all output quantities are correct to within
    a few units in the last place (ulps), even in the absence of a guard
    digit in addition/subtraction.

    In IEEE arithmetic, the code works correctly if one matrix element is
    infinite.

    Overflow will not occur unless the largest singular value itself
    overflows, or is within a few ulps of overflow. (On machines with
    partial overflow, like the Cray, overflow may occur if the largest
    singular value is within a factor of 2 of overflow.)

    Underflow is harmless if underflow is gradual. Otherwise, results
    may correspond to a matrix modified by perturbations of size near
    the underflow threshold.

    ====================================================================
*/


    fa = FUNC0(*f);
    ga = FUNC0(*g);
    ha = FUNC0(*h__);
    fhmn = FUNC2(fa,ha);
    fhmx = FUNC1(fa,ha);
    if (fhmn == 0.f) {
	*ssmin = 0.f;
	if (fhmx == 0.f) {
	    *ssmax = ga;
	} else {
/* Computing 2nd power */
	    r__1 = FUNC2(fhmx,ga) / FUNC1(fhmx,ga);
	    *ssmax = FUNC1(fhmx,ga) * FUNC3(r__1 * r__1 + 1.f);
	}
    } else {
	if (ga < fhmx) {
	    as = fhmn / fhmx + 1.f;
	    at = (fhmx - fhmn) / fhmx;
/* Computing 2nd power */
	    r__1 = ga / fhmx;
	    au = r__1 * r__1;
	    c__ = 2.f / (FUNC3(as * as + au) + FUNC3(at * at + au));
	    *ssmin = fhmn * c__;
	    *ssmax = fhmx / c__;
	} else {
	    au = fhmx / ga;
	    if (au == 0.f) {

/*
                Avoid possible harmful underflow if exponent range
                asymmetric (true SSMIN may not underflow even if
                AU underflows)
*/

		*ssmin = fhmn * fhmx / ga;
		*ssmax = ga;
	    } else {
		as = fhmn / fhmx + 1.f;
		at = (fhmx - fhmn) / fhmx;
/* Computing 2nd power */
		r__1 = as * au;
/* Computing 2nd power */
		r__2 = at * au;
		c__ = 1.f / (FUNC3(r__1 * r__1 + 1.f) + FUNC3(r__2 * r__2 + 1.f)
			);
		*ssmin = fhmn * c__ * au;
		*ssmin += *ssmin;
		*ssmax = ga / (c__ + c__);
	    }
	}
    }
    return 0;

/*     End of SLAS2 */

}