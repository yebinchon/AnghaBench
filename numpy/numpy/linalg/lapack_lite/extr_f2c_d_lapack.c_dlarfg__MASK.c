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
typedef  int doublereal ;

/* Variables and functions */
 int EPSILON ; 
 int SAFEMINIMUM ; 
 int FUNC0 (int) ; 
 int FUNC1 (int*,int*) ; 
 int FUNC2 (int*,int*) ; 

int FUNC3(integer *n, doublereal *alpha, doublereal *x,
	integer *incx, doublereal *tau)
{
    /* System generated locals */
    integer i__1;
    doublereal d__1;

    /* Local variables */
    static integer j, knt;
    static doublereal beta;
    extern doublereal FUNC4(integer *, doublereal *, integer *);
    extern /* Subroutine */ int FUNC5(integer *, doublereal *, doublereal *,
	    integer *);
    static doublereal xnorm;

    static doublereal safmin, rsafmn;


/*
    -- LAPACK auxiliary routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    DLARFG generates a real elementary reflector H of order n, such
    that

          H * ( alpha ) = ( beta ),   H' * H = I.
              (   x   )   (   0  )

    where alpha and beta are scalars, and x is an (n-1)-element real
    vector. H is represented in the form

          H = I - tau * ( 1 ) * ( 1 v' ) ,
                        ( v )

    where tau is a real scalar and v is a real (n-1)-element
    vector.

    If the elements of x are all zero, then tau = 0 and H is taken to be
    the unit matrix.

    Otherwise  1 <= tau <= 2.

    Arguments
    =========

    N       (input) INTEGER
            The order of the elementary reflector.

    ALPHA   (input/output) DOUBLE PRECISION
            On entry, the value alpha.
            On exit, it is overwritten with the value beta.

    X       (input/output) DOUBLE PRECISION array, dimension
                           (1+(N-2)*abs(INCX))
            On entry, the vector x.
            On exit, it is overwritten with the vector v.

    INCX    (input) INTEGER
            The increment between elements of X. INCX > 0.

    TAU     (output) DOUBLE PRECISION
            The value tau.

    =====================================================================
*/


    /* Parameter adjustments */
    --x;

    /* Function Body */
    if (*n <= 1) {
	*tau = 0.;
	return 0;
    }

    i__1 = *n - 1;
    xnorm = FUNC4(&i__1, &x[1], incx);

    if (xnorm == 0.) {

/*        H  =  I */

	*tau = 0.;
    } else {

/*        general case */

	d__1 = FUNC2(alpha, &xnorm);
	beta = -FUNC1(&d__1, alpha);
	safmin = SAFEMINIMUM / EPSILON;
	knt = 0;
	if (FUNC0(beta) < safmin) {

/*           XNORM, BETA may be inaccurate; scale X and recompute them */

	    rsafmn = 1. / safmin;
L10:
	    ++knt;
	    i__1 = *n - 1;
	    FUNC5(&i__1, &rsafmn, &x[1], incx);
	    beta *= rsafmn;
	    *alpha *= rsafmn;
	    if (FUNC0(beta) < safmin) {
		goto L10;
	    }

/*           New BETA is at most 1, at least SAFMIN */

	    i__1 = *n - 1;
	    xnorm = FUNC4(&i__1, &x[1], incx);
	    d__1 = FUNC2(alpha, &xnorm);
	    beta = -FUNC1(&d__1, alpha);
	}
	*tau = (beta - *alpha) / beta;
	i__1 = *n - 1;
	d__1 = 1. / (*alpha - beta);
	FUNC5(&i__1, &d__1, &x[1], incx);

/*        If ALPHA is subnormal, it may lose relative accuracy */

	i__1 = knt;
	for (j = 1; j <= i__1; ++j) {
	    beta *= safmin;
/* L20: */
	}
	*alpha = beta;
    }

    return 0;

/*     End of DLARFG */

}