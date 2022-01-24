#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ logical ;
typedef  int integer ;
typedef  int /*<<< orphan*/  doublereal ;
struct TYPE_10__ {scalar_t__ i; scalar_t__ r; } ;
typedef  TYPE_1__ doublecomplex ;

/* Variables and functions */
 int c__1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 

int FUNC3(char *compq, integer *n, doublecomplex *t,
	integer *ldt, doublecomplex *q, integer *ldq, integer *ifst, integer *
	ilst, integer *info)
{
    /* System generated locals */
    integer q_dim1, q_offset, t_dim1, t_offset, i__1, i__2, i__3;
    doublecomplex z__1;

    /* Local variables */
    static integer k, m1, m2, m3;
    static doublereal cs;
    static doublecomplex t11, t22, sn, temp;
    extern /* Subroutine */ int FUNC4(integer *, doublecomplex *, integer *,
	    doublecomplex *, integer *, doublereal *, doublecomplex *);
    extern logical FUNC5(char *, char *);
    static logical wantq;
    extern /* Subroutine */ int FUNC6(char *, integer *), FUNC2(
	    doublecomplex *, doublecomplex *, doublereal *, doublecomplex *,
	    doublecomplex *);


/*
    -- LAPACK routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    ZTREXC reorders the Schur factorization of a complex matrix
    A = Q*T*Q**H, so that the diagonal element of T with row index IFST
    is moved to row ILST.

    The Schur form T is reordered by a unitary similarity transformation
    Z**H*T*Z, and optionally the matrix Q of Schur vectors is updated by
    postmultplying it with Z.

    Arguments
    =========

    COMPQ   (input) CHARACTER*1
            = 'V':  update the matrix Q of Schur vectors;
            = 'N':  do not update Q.

    N       (input) INTEGER
            The order of the matrix T. N >= 0.

    T       (input/output) COMPLEX*16 array, dimension (LDT,N)
            On entry, the upper triangular matrix T.
            On exit, the reordered upper triangular matrix.

    LDT     (input) INTEGER
            The leading dimension of the array T. LDT >= max(1,N).

    Q       (input/output) COMPLEX*16 array, dimension (LDQ,N)
            On entry, if COMPQ = 'V', the matrix Q of Schur vectors.
            On exit, if COMPQ = 'V', Q has been postmultiplied by the
            unitary transformation matrix Z which reorders T.
            If COMPQ = 'N', Q is not referenced.

    LDQ     (input) INTEGER
            The leading dimension of the array Q.  LDQ >= max(1,N).

    IFST    (input) INTEGER
    ILST    (input) INTEGER
            Specify the reordering of the diagonal elements of T:
            The element with row index IFST is moved to row ILST by a
            sequence of transpositions between adjacent elements.
            1 <= IFST <= N; 1 <= ILST <= N.

    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value

    =====================================================================


       Decode and test the input parameters.
*/

    /* Parameter adjustments */
    t_dim1 = *ldt;
    t_offset = 1 + t_dim1;
    t -= t_offset;
    q_dim1 = *ldq;
    q_offset = 1 + q_dim1;
    q -= q_offset;

    /* Function Body */
    *info = 0;
    wantq = FUNC5(compq, "V");
    if (! FUNC5(compq, "N") && ! wantq) {
	*info = -1;
    } else if (*n < 0) {
	*info = -2;
    } else if (*ldt < FUNC1(1,*n)) {
	*info = -4;
    } else if (*ldq < 1 || wantq && *ldq < FUNC1(1,*n)) {
	*info = -6;
    } else if (*ifst < 1 || *ifst > *n) {
	*info = -7;
    } else if (*ilst < 1 || *ilst > *n) {
	*info = -8;
    }
    if (*info != 0) {
	i__1 = -(*info);
	FUNC6("ZTREXC", &i__1);
	return 0;
    }

/*     Quick return if possible */

    if (*n == 1 || *ifst == *ilst) {
	return 0;
    }

    if (*ifst < *ilst) {

/*        Move the IFST-th diagonal element forward down the diagonal. */

	m1 = 0;
	m2 = -1;
	m3 = 1;
    } else {

/*        Move the IFST-th diagonal element backward up the diagonal. */

	m1 = -1;
	m2 = 0;
	m3 = -1;
    }

    i__1 = *ilst + m2;
    i__2 = m3;
    for (k = *ifst + m1; i__2 < 0 ? k >= i__1 : k <= i__1; k += i__2) {

/*        Interchange the k-th and (k+1)-th diagonal elements. */

	i__3 = k + k * t_dim1;
	t11.r = t[i__3].r, t11.i = t[i__3].i;
	i__3 = k + 1 + (k + 1) * t_dim1;
	t22.r = t[i__3].r, t22.i = t[i__3].i;

/*        Determine the transformation to perform the interchange. */

	z__1.r = t22.r - t11.r, z__1.i = t22.i - t11.i;
	FUNC2(&t[k + (k + 1) * t_dim1], &z__1, &cs, &sn, &temp);

/*        Apply transformation to the matrix T. */

	if (k + 2 <= *n) {
	    i__3 = *n - k - 1;
	    FUNC4(&i__3, &t[k + (k + 2) * t_dim1], ldt, &t[k + 1 + (k + 2) *
		    t_dim1], ldt, &cs, &sn);
	}
	i__3 = k - 1;
	FUNC0(&z__1, &sn);
	FUNC4(&i__3, &t[k * t_dim1 + 1], &c__1, &t[(k + 1) * t_dim1 + 1], &
		c__1, &cs, &z__1);

	i__3 = k + k * t_dim1;
	t[i__3].r = t22.r, t[i__3].i = t22.i;
	i__3 = k + 1 + (k + 1) * t_dim1;
	t[i__3].r = t11.r, t[i__3].i = t11.i;

	if (wantq) {

/*           Accumulate transformation in the matrix Q. */

	    FUNC0(&z__1, &sn);
	    FUNC4(n, &q[k * q_dim1 + 1], &c__1, &q[(k + 1) * q_dim1 + 1], &
		    c__1, &cs, &z__1);
	}

/* L10: */
    }

    return 0;

/*     End of ZTREXC */

}