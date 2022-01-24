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
 int BASE ; 
 int EPSILON ; 
 int SAFEMINIMUM ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int*,int*) ; 
 int FUNC4 (int) ; 

int FUNC5(doublereal *f, doublereal *g, doublereal *cs,
	doublereal *sn, doublereal *r__)
{
    /* System generated locals */
    integer i__1;
    doublereal d__1, d__2;

    /* Local variables */
    static integer i__;
    static doublereal f1, g1, eps, scale;
    static integer count;
    static doublereal safmn2, safmx2;

    static doublereal safmin;


/*
    -- LAPACK auxiliary routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    DLARTG generate a plane rotation so that

       [  CS  SN  ]  .  [ F ]  =  [ R ]   where CS**2 + SN**2 = 1.
       [ -SN  CS  ]     [ G ]     [ 0 ]

    This is a slower, more accurate version of the BLAS1 routine DROTG,
    with the following other differences:
       F and G are unchanged on return.
       If G=0, then CS=1 and SN=0.
       If F=0 and (G .ne. 0), then CS=0 and SN=1 without doing any
          floating point operations (saves work in DBDSQR when
          there are zeros on the diagonal).

    If F exceeds G in magnitude, CS will be positive.

    Arguments
    =========

    F       (input) DOUBLE PRECISION
            The first component of vector to be rotated.

    G       (input) DOUBLE PRECISION
            The second component of vector to be rotated.

    CS      (output) DOUBLE PRECISION
            The cosine of the rotation.

    SN      (output) DOUBLE PRECISION
            The sine of the rotation.

    R       (output) DOUBLE PRECISION
            The nonzero component of the rotated vector.

    This version has a few statements commented out for thread safety
    (machine parameters are computed on each entry). 10 feb 03, SJH.

    =====================================================================

       LOGICAL            FIRST
       SAVE               FIRST, SAFMX2, SAFMIN, SAFMN2
       DATA               FIRST / .TRUE. /

       IF( FIRST ) THEN
*/
    safmin = SAFEMINIMUM;
    eps = EPSILON;
    d__1 = BASE;
    i__1 = (integer) (FUNC1(safmin / eps) / FUNC1(BASE) / 2.);
    safmn2 = FUNC3(&d__1, &i__1);
    safmx2 = 1. / safmn2;
/*
          FIRST = .FALSE.
       END IF
*/
    if (*g == 0.) {
	*cs = 1.;
	*sn = 0.;
	*r__ = *f;
    } else if (*f == 0.) {
	*cs = 0.;
	*sn = 1.;
	*r__ = *g;
    } else {
	f1 = *f;
	g1 = *g;
/* Computing MAX */
	d__1 = FUNC0(f1), d__2 = FUNC0(g1);
	scale = FUNC2(d__1,d__2);
	if (scale >= safmx2) {
	    count = 0;
L10:
	    ++count;
	    f1 *= safmn2;
	    g1 *= safmn2;
/* Computing MAX */
	    d__1 = FUNC0(f1), d__2 = FUNC0(g1);
	    scale = FUNC2(d__1,d__2);
	    if (scale >= safmx2) {
		goto L10;
	    }
/* Computing 2nd power */
	    d__1 = f1;
/* Computing 2nd power */
	    d__2 = g1;
	    *r__ = FUNC4(d__1 * d__1 + d__2 * d__2);
	    *cs = f1 / *r__;
	    *sn = g1 / *r__;
	    i__1 = count;
	    for (i__ = 1; i__ <= i__1; ++i__) {
		*r__ *= safmx2;
/* L20: */
	    }
	} else if (scale <= safmn2) {
	    count = 0;
L30:
	    ++count;
	    f1 *= safmx2;
	    g1 *= safmx2;
/* Computing MAX */
	    d__1 = FUNC0(f1), d__2 = FUNC0(g1);
	    scale = FUNC2(d__1,d__2);
	    if (scale <= safmn2) {
		goto L30;
	    }
/* Computing 2nd power */
	    d__1 = f1;
/* Computing 2nd power */
	    d__2 = g1;
	    *r__ = FUNC4(d__1 * d__1 + d__2 * d__2);
	    *cs = f1 / *r__;
	    *sn = g1 / *r__;
	    i__1 = count;
	    for (i__ = 1; i__ <= i__1; ++i__) {
		*r__ *= safmn2;
/* L40: */
	    }
	} else {
/* Computing 2nd power */
	    d__1 = f1;
/* Computing 2nd power */
	    d__2 = g1;
	    *r__ = FUNC4(d__1 * d__1 + d__2 * d__2);
	    *cs = f1 / *r__;
	    *sn = g1 / *r__;
	}
	if (FUNC0(*f) > FUNC0(*g) && *cs < 0.) {
	    *cs = -(*cs);
	    *sn = -(*sn);
	    *r__ = -(*r__);
	}
    }
    return 0;

/*     End of DLARTG */

}