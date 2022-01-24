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
typedef  int real ;
typedef  void* logical ;
typedef  size_t integer ;
typedef  int doublereal ;

/* Variables and functions */
 size_t c__1 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 

doublereal FUNC3(char *norm, integer *n, real *d__, real *e)
{
    /* System generated locals */
    integer i__1;
    real ret_val, r__1, r__2, r__3, r__4, r__5;

    /* Local variables */
    static integer i__;
    static real sum, scale;
    extern logical FUNC4(char *, char *);
    static real anorm;
    extern /* Subroutine */ int FUNC5(integer *, real *, integer *, real *,
	    real *);


/*
    -- LAPACK auxiliary routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    SLANST  returns the value of the one norm,  or the Frobenius norm, or
    the  infinity norm,  or the  element of  largest absolute value  of a
    real symmetric tridiagonal matrix A.

    Description
    ===========

    SLANST returns the value

       SLANST = ( max(abs(A(i,j))), NORM = 'M' or 'm'
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
            Specifies the value to be returned in SLANST as described
            above.

    N       (input) INTEGER
            The order of the matrix A.  N >= 0.  When N = 0, SLANST is
            set to zero.

    D       (input) REAL array, dimension (N)
            The diagonal elements of A.

    E       (input) REAL array, dimension (N-1)
            The (n-1) sub-diagonal or super-diagonal elements of A.

    =====================================================================
*/


    /* Parameter adjustments */
    --e;
    --d__;

    /* Function Body */
    if (*n <= 0) {
	anorm = 0.f;
    } else if (FUNC4(norm, "M")) {

/*        Find max(abs(A(i,j))). */

	anorm = (r__1 = d__[*n], FUNC0(r__1));
	i__1 = *n - 1;
	for (i__ = 1; i__ <= i__1; ++i__) {
/* Computing MAX */
	    r__2 = anorm, r__3 = (r__1 = d__[i__], FUNC0(r__1));
	    anorm = FUNC1(r__2,r__3);
/* Computing MAX */
	    r__2 = anorm, r__3 = (r__1 = e[i__], FUNC0(r__1));
	    anorm = FUNC1(r__2,r__3);
/* L10: */
	}
    } else if (FUNC4(norm, "O") || *(unsigned char *)
	    norm == '1' || FUNC4(norm, "I")) {

/*        Find norm1(A). */

	if (*n == 1) {
	    anorm = FUNC0(d__[1]);
	} else {
/* Computing MAX */
	    r__3 = FUNC0(d__[1]) + FUNC0(e[1]), r__4 = (r__1 = e[*n - 1], FUNC0(
		    r__1)) + (r__2 = d__[*n], FUNC0(r__2));
	    anorm = FUNC1(r__3,r__4);
	    i__1 = *n - 1;
	    for (i__ = 2; i__ <= i__1; ++i__) {
/* Computing MAX */
		r__4 = anorm, r__5 = (r__1 = d__[i__], FUNC0(r__1)) + (r__2 =
			e[i__], FUNC0(r__2)) + (r__3 = e[i__ - 1], FUNC0(r__3));
		anorm = FUNC1(r__4,r__5);
/* L20: */
	    }
	}
    } else if (FUNC4(norm, "F") || FUNC4(norm, "E")) {

/*        Find normF(A). */

	scale = 0.f;
	sum = 1.f;
	if (*n > 1) {
	    i__1 = *n - 1;
	    FUNC5(&i__1, &e[1], &c__1, &scale, &sum);
	    sum *= 2;
	}
	FUNC5(n, &d__[1], &c__1, &scale, &sum);
	anorm = scale * FUNC2(sum);
    }

    ret_val = anorm;
    return ret_val;

/*     End of SLANST */

}