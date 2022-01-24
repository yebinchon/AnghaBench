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
typedef  scalar_t__ logical ;
typedef  scalar_t__ integer ;
typedef  int /*<<< orphan*/  complex ;

/* Variables and functions */
 int /*<<< orphan*/  c_b57 ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 

int FUNC1(char *uplo, integer *n, integer *nrhs, complex *
	a, integer *lda, complex *b, integer *ldb, integer *info)
{
    /* System generated locals */
    integer a_dim1, a_offset, b_dim1, b_offset, i__1;

    /* Local variables */
    extern logical FUNC2(char *, char *);
    extern /* Subroutine */ int FUNC3(char *, char *, char *, char *,
	    integer *, integer *, complex *, complex *, integer *, complex *,
	    integer *);
    static logical upper;
    extern /* Subroutine */ int FUNC4(char *, integer *);


/*
    -- LAPACK routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    CPOTRS solves a system of linear equations A*X = B with a Hermitian
    positive definite matrix A using the Cholesky factorization
    A = U**H*U or A = L*L**H computed by CPOTRF.

    Arguments
    =========

    UPLO    (input) CHARACTER*1
            = 'U':  Upper triangle of A is stored;
            = 'L':  Lower triangle of A is stored.

    N       (input) INTEGER
            The order of the matrix A.  N >= 0.

    NRHS    (input) INTEGER
            The number of right hand sides, i.e., the number of columns
            of the matrix B.  NRHS >= 0.

    A       (input) COMPLEX array, dimension (LDA,N)
            The triangular factor U or L from the Cholesky factorization
            A = U**H*U or A = L*L**H, as computed by CPOTRF.

    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,N).

    B       (input/output) COMPLEX array, dimension (LDB,NRHS)
            On entry, the right hand side matrix B.
            On exit, the solution matrix X.

    LDB     (input) INTEGER
            The leading dimension of the array B.  LDB >= max(1,N).

    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value

    =====================================================================


       Test the input parameters.
*/

    /* Parameter adjustments */
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    b_dim1 = *ldb;
    b_offset = 1 + b_dim1;
    b -= b_offset;

    /* Function Body */
    *info = 0;
    upper = FUNC2(uplo, "U");
    if (! upper && ! FUNC2(uplo, "L")) {
	*info = -1;
    } else if (*n < 0) {
	*info = -2;
    } else if (*nrhs < 0) {
	*info = -3;
    } else if (*lda < FUNC0(1,*n)) {
	*info = -5;
    } else if (*ldb < FUNC0(1,*n)) {
	*info = -7;
    }
    if (*info != 0) {
	i__1 = -(*info);
	FUNC4("CPOTRS", &i__1);
	return 0;
    }

/*     Quick return if possible */

    if (*n == 0 || *nrhs == 0) {
	return 0;
    }

    if (upper) {

/*
          Solve A*X = B where A = U'*U.

          Solve U'*X = B, overwriting B with X.
*/

	FUNC3("Left", "Upper", "Conjugate transpose", "Non-unit", n, nrhs, &
		c_b57, &a[a_offset], lda, &b[b_offset], ldb);

/*        Solve U*X = B, overwriting B with X. */

	FUNC3("Left", "Upper", "No transpose", "Non-unit", n, nrhs, &c_b57, &
		a[a_offset], lda, &b[b_offset], ldb);
    } else {

/*
          Solve A*X = B where A = L*L'.

          Solve L*X = B, overwriting B with X.
*/

	FUNC3("Left", "Lower", "No transpose", "Non-unit", n, nrhs, &c_b57, &
		a[a_offset], lda, &b[b_offset], ldb);

/*        Solve L'*X = B, overwriting B with X. */

	FUNC3("Left", "Lower", "Conjugate transpose", "Non-unit", n, nrhs, &
		c_b57, &a[a_offset], lda, &b[b_offset], ldb);
    }

    return 0;

/*     End of CPOTRS */

}