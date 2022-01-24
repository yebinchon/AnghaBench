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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

int FUNC2(integer *i__, doublereal *d__, doublereal *z__,
	doublereal *delta, doublereal *rho, doublereal *dsigma, doublereal *
	work)
{
    /* System generated locals */
    doublereal d__1;

    /* Local variables */
    static doublereal b, c__, w, del, tau, delsq;


/*
    -- LAPACK auxiliary routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    This subroutine computes the square root of the I-th eigenvalue
    of a positive symmetric rank-one modification of a 2-by-2 diagonal
    matrix

               diag( D ) * diag( D ) +  RHO *  Z * transpose(Z) .

    The diagonal entries in the array D are assumed to satisfy

               0 <= D(i) < D(j)  for  i < j .

    We also assume RHO > 0 and that the Euclidean norm of the vector
    Z is one.

    Arguments
    =========

    I      (input) INTEGER
           The index of the eigenvalue to be computed.  I = 1 or I = 2.

    D      (input) DOUBLE PRECISION array, dimension ( 2 )
           The original eigenvalues.  We assume 0 <= D(1) < D(2).

    Z      (input) DOUBLE PRECISION array, dimension ( 2 )
           The components of the updating vector.

    DELTA  (output) DOUBLE PRECISION array, dimension ( 2 )
           Contains (D(j) - sigma_I) in its  j-th component.
           The vector DELTA contains the information necessary
           to construct the eigenvectors.

    RHO    (input) DOUBLE PRECISION
           The scalar in the symmetric updating formula.

    DSIGMA (output) DOUBLE PRECISION
           The computed sigma_I, the I-th updated eigenvalue.

    WORK   (workspace) DOUBLE PRECISION array, dimension ( 2 )
           WORK contains (D(j) + sigma_I) in its  j-th component.

    Further Details
    ===============

    Based on contributions by
       Ren-Cang Li, Computer Science Division, University of California
       at Berkeley, USA

    =====================================================================
*/


    /* Parameter adjustments */
    --work;
    --delta;
    --z__;
    --d__;

    /* Function Body */
    del = d__[2] - d__[1];
    delsq = del * (d__[2] + d__[1]);
    if (*i__ == 1) {
	w = *rho * 4. * (z__[2] * z__[2] / (d__[1] + d__[2] * 3.) - z__[1] *
		z__[1] / (d__[1] * 3. + d__[2])) / del + 1.;
	if (w > 0.) {
	    b = delsq + *rho * (z__[1] * z__[1] + z__[2] * z__[2]);
	    c__ = *rho * z__[1] * z__[1] * delsq;

/*
             B > ZERO, always

             The following TAU is DSIGMA * DSIGMA - D( 1 ) * D( 1 )
*/

	    tau = c__ * 2. / (b + FUNC1((d__1 = b * b - c__ * 4., FUNC0(d__1))));

/*           The following TAU is DSIGMA - D( 1 ) */

	    tau /= d__[1] + FUNC1(d__[1] * d__[1] + tau);
	    *dsigma = d__[1] + tau;
	    delta[1] = -tau;
	    delta[2] = del - tau;
	    work[1] = d__[1] * 2. + tau;
	    work[2] = d__[1] + tau + d__[2];
/*
             DELTA( 1 ) = -Z( 1 ) / TAU
             DELTA( 2 ) = Z( 2 ) / ( DEL-TAU )
*/
	} else {
	    b = -delsq + *rho * (z__[1] * z__[1] + z__[2] * z__[2]);
	    c__ = *rho * z__[2] * z__[2] * delsq;

/*           The following TAU is DSIGMA * DSIGMA - D( 2 ) * D( 2 ) */

	    if (b > 0.) {
		tau = c__ * -2. / (b + FUNC1(b * b + c__ * 4.));
	    } else {
		tau = (b - FUNC1(b * b + c__ * 4.)) / 2.;
	    }

/*           The following TAU is DSIGMA - D( 2 ) */

	    tau /= d__[2] + FUNC1((d__1 = d__[2] * d__[2] + tau, FUNC0(d__1)));
	    *dsigma = d__[2] + tau;
	    delta[1] = -(del + tau);
	    delta[2] = -tau;
	    work[1] = d__[1] + tau + d__[2];
	    work[2] = d__[2] * 2. + tau;
/*
             DELTA( 1 ) = -Z( 1 ) / ( DEL+TAU )
             DELTA( 2 ) = -Z( 2 ) / TAU
*/
	}
/*
          TEMP = SQRT( DELTA( 1 )*DELTA( 1 )+DELTA( 2 )*DELTA( 2 ) )
          DELTA( 1 ) = DELTA( 1 ) / TEMP
          DELTA( 2 ) = DELTA( 2 ) / TEMP
*/
    } else {

/*        Now I=2 */

	b = -delsq + *rho * (z__[1] * z__[1] + z__[2] * z__[2]);
	c__ = *rho * z__[2] * z__[2] * delsq;

/*        The following TAU is DSIGMA * DSIGMA - D( 2 ) * D( 2 ) */

	if (b > 0.) {
	    tau = (b + FUNC1(b * b + c__ * 4.)) / 2.;
	} else {
	    tau = c__ * 2. / (-b + FUNC1(b * b + c__ * 4.));
	}

/*        The following TAU is DSIGMA - D( 2 ) */

	tau /= d__[2] + FUNC1(d__[2] * d__[2] + tau);
	*dsigma = d__[2] + tau;
	delta[1] = -(del + tau);
	delta[2] = -tau;
	work[1] = d__[1] + tau + d__[2];
	work[2] = d__[2] * 2. + tau;
/*
          DELTA( 1 ) = -Z( 1 ) / ( DEL+TAU )
          DELTA( 2 ) = -Z( 2 ) / TAU
          TEMP = SQRT( DELTA( 1 )*DELTA( 1 )+DELTA( 2 )*DELTA( 2 ) )
          DELTA( 1 ) = DELTA( 1 ) / TEMP
          DELTA( 2 ) = DELTA( 2 ) / TEMP
*/
    }
    return 0;

/*     End of DLASD5 */

}