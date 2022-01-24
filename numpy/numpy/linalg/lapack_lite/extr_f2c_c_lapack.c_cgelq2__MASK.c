#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int integer ;
struct TYPE_9__ {float r; float i; } ;
typedef  TYPE_1__ complex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,TYPE_1__*,TYPE_1__*,int*,TYPE_1__*) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int*) ; 

int FUNC5(integer *m, integer *n, complex *a, integer *lda,
	 complex *tau, complex *work, integer *info)
{
    /* System generated locals */
    integer a_dim1, a_offset, i__1, i__2, i__3;

    /* Local variables */
    static integer i__, k;
    static complex alpha;
    extern /* Subroutine */ int FUNC6(char *, integer *, integer *, complex *
	    , integer *, complex *, complex *, integer *, complex *),
	    FUNC1(integer *, complex *, complex *, integer *, complex *),
	    FUNC0(integer *, complex *, integer *), FUNC4(char *, integer
	    *);


/*
    -- LAPACK routine (version 3.2.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       June 2010


    Purpose
    =======

    CGELQ2 computes an LQ factorization of a complex m by n matrix A:
    A = L * Q.

    Arguments
    =========

    M       (input) INTEGER
            The number of rows of the matrix A.  M >= 0.

    N       (input) INTEGER
            The number of columns of the matrix A.  N >= 0.

    A       (input/output) COMPLEX array, dimension (LDA,N)
            On entry, the m by n matrix A.
            On exit, the elements on and below the diagonal of the array
            contain the m by min(m,n) lower trapezoidal matrix L (L is
            lower triangular if m <= n); the elements above the diagonal,
            with the array TAU, represent the unitary matrix Q as a
            product of elementary reflectors (see Further Details).

    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,M).

    TAU     (output) COMPLEX array, dimension (min(M,N))
            The scalar factors of the elementary reflectors (see Further
            Details).

    WORK    (workspace) COMPLEX array, dimension (M)

    INFO    (output) INTEGER
            = 0: successful exit
            < 0: if INFO = -i, the i-th argument had an illegal value

    Further Details
    ===============

    The matrix Q is represented as a product of elementary reflectors

       Q = H(k)' . . . H(2)' H(1)', where k = min(m,n).

    Each H(i) has the form

       H(i) = I - tau * v * v'

    where tau is a complex scalar, and v is a complex vector with
    v(1:i-1) = 0 and v(i) = 1; conjg(v(i+1:n)) is stored on exit in
    A(i,i+1:n), and tau in TAU(i).

    =====================================================================


       Test the input arguments
*/

    /* Parameter adjustments */
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    --work;

    /* Function Body */
    *info = 0;
    if (*m < 0) {
	*info = -1;
    } else if (*n < 0) {
	*info = -2;
    } else if (*lda < FUNC2(1,*m)) {
	*info = -4;
    }
    if (*info != 0) {
	i__1 = -(*info);
	FUNC4("CGELQ2", &i__1);
	return 0;
    }

    k = FUNC3(*m,*n);

    i__1 = k;
    for (i__ = 1; i__ <= i__1; ++i__) {

/*        Generate elementary reflector H(i) to annihilate A(i,i+1:n) */

	i__2 = *n - i__ + 1;
	FUNC0(&i__2, &a[i__ + i__ * a_dim1], lda);
	i__2 = i__ + i__ * a_dim1;
	alpha.r = a[i__2].r, alpha.i = a[i__2].i;
	i__2 = *n - i__ + 1;
/* Computing MIN */
	i__3 = i__ + 1;
	FUNC1(&i__2, &alpha, &a[i__ + FUNC3(i__3,*n) * a_dim1], lda, &tau[i__]
		);
	if (i__ < *m) {

/*           Apply H(i) to A(i+1:m,i:n) from the right */

	    i__2 = i__ + i__ * a_dim1;
	    a[i__2].r = 1.f, a[i__2].i = 0.f;
	    i__2 = *m - i__;
	    i__3 = *n - i__ + 1;
	    FUNC6("Right", &i__2, &i__3, &a[i__ + i__ * a_dim1], lda, &tau[
		    i__], &a[i__ + 1 + i__ * a_dim1], lda, &work[1]);
	}
	i__2 = i__ + i__ * a_dim1;
	a[i__2].r = alpha.r, a[i__2].i = alpha.i;
	i__2 = *n - i__ + 1;
	FUNC0(&i__2, &a[i__ + i__ * a_dim1], lda);
/* L10: */
    }
    return 0;

/*     End of CGELQ2 */

}