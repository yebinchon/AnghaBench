#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int integer ;
typedef  int doublereal ;
struct TYPE_8__ {int r; int i; } ;
typedef  TYPE_1__ doublecomplex ;
typedef  int /*<<< orphan*/  VOID ;

/* Variables and functions */
 int EPSILON ; 
 int SAFEMINIMUM ; 
 int FUNC0 (int) ; 
 TYPE_1__ c_b57 ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int*,int*) ; 
 int FUNC3 (int*,TYPE_1__*,int*) ; 

int FUNC4(integer *n, doublecomplex *alpha, doublecomplex *
	x, integer *incx, doublecomplex *tau)
{
    /* System generated locals */
    integer i__1;
    doublereal d__1, d__2;
    doublecomplex z__1, z__2;

    /* Local variables */
    static integer j, knt;
    static doublereal beta, alphi, alphr;
    extern /* Subroutine */ int FUNC5(integer *, doublecomplex *,
	    doublecomplex *, integer *);
    static doublereal xnorm;
    extern doublereal FUNC6(doublereal *, doublereal *, doublereal *),
	    FUNC3(integer *, doublecomplex *, integer *), FUNC7(char *);
    static doublereal safmin;
    extern /* Subroutine */ int FUNC8(integer *, doublereal *,
	    doublecomplex *, integer *);
    static doublereal rsafmn;
    extern /* Double Complex */ VOID FUNC9(doublecomplex *, doublecomplex *,
	     doublecomplex *);


/*
    -- LAPACK auxiliary routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    ZLARFG generates a complex elementary reflector H of order n, such
    that

          H' * ( alpha ) = ( beta ),   H' * H = I.
               (   x   )   (   0  )

    where alpha and beta are scalars, with beta real, and x is an
    (n-1)-element complex vector. H is represented in the form

          H = I - tau * ( 1 ) * ( 1 v' ) ,
                        ( v )

    where tau is a complex scalar and v is a complex (n-1)-element
    vector. Note that H is not hermitian.

    If the elements of x are all zero and alpha is real, then tau = 0
    and H is taken to be the unit matrix.

    Otherwise  1 <= real(tau) <= 2  and  abs(tau-1) <= 1 .

    Arguments
    =========

    N       (input) INTEGER
            The order of the elementary reflector.

    ALPHA   (input/output) COMPLEX*16
            On entry, the value alpha.
            On exit, it is overwritten with the value beta.

    X       (input/output) COMPLEX*16 array, dimension
                           (1+(N-2)*abs(INCX))
            On entry, the vector x.
            On exit, it is overwritten with the vector v.

    INCX    (input) INTEGER
            The increment between elements of X. INCX > 0.

    TAU     (output) COMPLEX*16
            The value tau.

    =====================================================================
*/


    /* Parameter adjustments */
    --x;

    /* Function Body */
    if (*n <= 0) {
	tau->r = 0., tau->i = 0.;
	return 0;
    }

    i__1 = *n - 1;
    xnorm = FUNC3(&i__1, &x[1], incx);
    alphr = alpha->r;
    alphi = FUNC1(alpha);

    if (xnorm == 0. && alphi == 0.) {

/*        H  =  I */

	tau->r = 0., tau->i = 0.;
    } else {

/*        general case */

	d__1 = FUNC6(&alphr, &alphi, &xnorm);
	beta = -FUNC2(&d__1, &alphr);
	safmin = SAFEMINIMUM / EPSILON;
	rsafmn = 1. / safmin;

	knt = 0;
	if (FUNC0(beta) < safmin) {

/*           XNORM, BETA may be inaccurate; scale X and recompute them */

L10:
	    ++knt;
	    i__1 = *n - 1;
	    FUNC8(&i__1, &rsafmn, &x[1], incx);
	    beta *= rsafmn;
	    alphi *= rsafmn;
	    alphr *= rsafmn;
	    if (FUNC0(beta) < safmin) {
		goto L10;
	    }

/*           New BETA is at most 1, at least SAFMIN */

	    i__1 = *n - 1;
	    xnorm = FUNC3(&i__1, &x[1], incx);
	    z__1.r = alphr, z__1.i = alphi;
	    alpha->r = z__1.r, alpha->i = z__1.i;
	    d__1 = FUNC6(&alphr, &alphi, &xnorm);
	    beta = -FUNC2(&d__1, &alphr);
	}
	d__1 = (beta - alphr) / beta;
	d__2 = -alphi / beta;
	z__1.r = d__1, z__1.i = d__2;
	tau->r = z__1.r, tau->i = z__1.i;
	z__2.r = alpha->r - beta, z__2.i = alpha->i;
	FUNC9(&z__1, &c_b57, &z__2);
	alpha->r = z__1.r, alpha->i = z__1.i;
	i__1 = *n - 1;
	FUNC5(&i__1, alpha, &x[1], incx);

/*        If ALPHA is subnormal, it may lose relative accuracy */

	i__1 = knt;
	for (j = 1; j <= i__1; ++j) {
	    beta *= safmin;
/* L20: */
	}
	alpha->r = beta, alpha->i = 0.;
    }

    return 0;

/*     End of ZLARFG */

}