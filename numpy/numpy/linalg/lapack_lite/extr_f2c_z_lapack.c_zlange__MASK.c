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
typedef  void* logical ;
typedef  int integer ;
typedef  int doublereal ;
typedef  int /*<<< orphan*/  doublecomplex ;

/* Variables and functions */
 int c__1 ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

doublereal FUNC4(char *norm, integer *m, integer *n, doublecomplex *a,
	integer *lda, doublereal *work)
{
    /* System generated locals */
    integer a_dim1, a_offset, i__1, i__2;
    doublereal ret_val, d__1, d__2;

    /* Local variables */
    static integer i__, j;
    static doublereal sum, scale;
    extern logical FUNC5(char *, char *);
    static doublereal value;
    extern /* Subroutine */ int FUNC6(integer *, doublecomplex *, integer *,
	     doublereal *, doublereal *);


/*
    -- LAPACK auxiliary routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    ZLANGE  returns the value of the one norm,  or the Frobenius norm, or
    the  infinity norm,  or the  element of  largest absolute value  of a
    complex matrix A.

    Description
    ===========

    ZLANGE returns the value

       ZLANGE = ( max(abs(A(i,j))), NORM = 'M' or 'm'
                (
                ( norm1(A),         NORM = '1', 'O' or 'o'
                (
                ( normI(A),         NORM = 'I' or 'i'
                (
                ( normF(A),         NORM = 'F', 'f', 'E' or 'e'

    where  norm1  denotes the  one norm of a matrix (maximum column sum),
    normI  denotes the  infinity norm  of a matrix  (maximum row sum) and
    normF  denotes the  Frobenius norm of a matrix (square root of sum of
    squares).  Note that  max(abs(A(i,j)))  is not a consistent matrix norm.

    Arguments
    =========

    NORM    (input) CHARACTER*1
            Specifies the value to be returned in ZLANGE as described
            above.

    M       (input) INTEGER
            The number of rows of the matrix A.  M >= 0.  When M = 0,
            ZLANGE is set to zero.

    N       (input) INTEGER
            The number of columns of the matrix A.  N >= 0.  When N = 0,
            ZLANGE is set to zero.

    A       (input) COMPLEX*16 array, dimension (LDA,N)
            The m by n matrix A.

    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(M,1).

    WORK    (workspace) DOUBLE PRECISION array, dimension (MAX(1,LWORK)),
            where LWORK >= M when NORM = 'I'; otherwise, WORK is not
            referenced.

   =====================================================================
*/


    /* Parameter adjustments */
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --work;

    /* Function Body */
    if (FUNC1(*m,*n) == 0) {
	value = 0.;
    } else if (FUNC5(norm, "M")) {

/*        Find max(abs(A(i,j))). */

	value = 0.;
	i__1 = *n;
	for (j = 1; j <= i__1; ++j) {
	    i__2 = *m;
	    for (i__ = 1; i__ <= i__2; ++i__) {
/* Computing MAX */
		d__1 = value, d__2 = FUNC3(&a[i__ + j * a_dim1]);
		value = FUNC0(d__1,d__2);
/* L10: */
	    }
/* L20: */
	}
    } else if (FUNC5(norm, "O") || *(unsigned char *)
	    norm == '1') {

/*        Find norm1(A). */

	value = 0.;
	i__1 = *n;
	for (j = 1; j <= i__1; ++j) {
	    sum = 0.;
	    i__2 = *m;
	    for (i__ = 1; i__ <= i__2; ++i__) {
		sum += FUNC3(&a[i__ + j * a_dim1]);
/* L30: */
	    }
	    value = FUNC0(value,sum);
/* L40: */
	}
    } else if (FUNC5(norm, "I")) {

/*        Find normI(A). */

	i__1 = *m;
	for (i__ = 1; i__ <= i__1; ++i__) {
	    work[i__] = 0.;
/* L50: */
	}
	i__1 = *n;
	for (j = 1; j <= i__1; ++j) {
	    i__2 = *m;
	    for (i__ = 1; i__ <= i__2; ++i__) {
		work[i__] += FUNC3(&a[i__ + j * a_dim1]);
/* L60: */
	    }
/* L70: */
	}
	value = 0.;
	i__1 = *m;
	for (i__ = 1; i__ <= i__1; ++i__) {
/* Computing MAX */
	    d__1 = value, d__2 = work[i__];
	    value = FUNC0(d__1,d__2);
/* L80: */
	}
    } else if (FUNC5(norm, "F") || FUNC5(norm, "E")) {

/*        Find normF(A). */

	scale = 0.;
	sum = 1.;
	i__1 = *n;
	for (j = 1; j <= i__1; ++j) {
	    FUNC6(m, &a[j * a_dim1 + 1], &c__1, &scale, &sum);
/* L90: */
	}
	value = scale * FUNC2(sum);
    }

    ret_val = value;
    return ret_val;

/*     End of ZLANGE */

}