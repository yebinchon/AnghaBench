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
typedef  scalar_t__ integer ;
typedef  int /*<<< orphan*/  doublecomplex ;

/* Variables and functions */
 scalar_t__ c__1 ; 
 int /*<<< orphan*/  c_b57 ; 
 scalar_t__ c_n1 ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__*) ; 

int FUNC2(char *trans, integer *n, integer *nrhs,
	doublecomplex *a, integer *lda, integer *ipiv, doublecomplex *b,
	integer *ldb, integer *info)
{
    /* System generated locals */
    integer a_dim1, a_offset, b_dim1, b_offset, i__1;

    /* Local variables */
    extern logical FUNC3(char *, char *);
    extern /* Subroutine */ int FUNC4(char *, char *, char *, char *,
	    integer *, integer *, doublecomplex *, doublecomplex *, integer *,
	     doublecomplex *, integer *),
	    FUNC1(char *, integer *);
    static logical notran;
    extern /* Subroutine */ int FUNC5(integer *, doublecomplex *, integer *,
	     integer *, integer *, integer *, integer *);


/*
    -- LAPACK routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    ZGETRS solves a system of linear equations
       A * X = B,  A**T * X = B,  or  A**H * X = B
    with a general N-by-N matrix A using the LU factorization computed
    by ZGETRF.

    Arguments
    =========

    TRANS   (input) CHARACTER*1
            Specifies the form of the system of equations:
            = 'N':  A * X = B     (No transpose)
            = 'T':  A**T * X = B  (Transpose)
            = 'C':  A**H * X = B  (Conjugate transpose)

    N       (input) INTEGER
            The order of the matrix A.  N >= 0.

    NRHS    (input) INTEGER
            The number of right hand sides, i.e., the number of columns
            of the matrix B.  NRHS >= 0.

    A       (input) COMPLEX*16 array, dimension (LDA,N)
            The factors L and U from the factorization A = P*L*U
            as computed by ZGETRF.

    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,N).

    IPIV    (input) INTEGER array, dimension (N)
            The pivot indices from ZGETRF; for 1<=i<=N, row i of the
            matrix was interchanged with row IPIV(i).

    B       (input/output) COMPLEX*16 array, dimension (LDB,NRHS)
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
    --ipiv;
    b_dim1 = *ldb;
    b_offset = 1 + b_dim1;
    b -= b_offset;

    /* Function Body */
    *info = 0;
    notran = FUNC3(trans, "N");
    if (! notran && ! FUNC3(trans, "T") && ! FUNC3(
	    trans, "C")) {
	*info = -1;
    } else if (*n < 0) {
	*info = -2;
    } else if (*nrhs < 0) {
	*info = -3;
    } else if (*lda < FUNC0(1,*n)) {
	*info = -5;
    } else if (*ldb < FUNC0(1,*n)) {
	*info = -8;
    }
    if (*info != 0) {
	i__1 = -(*info);
	FUNC1("ZGETRS", &i__1);
	return 0;
    }

/*     Quick return if possible */

    if (*n == 0 || *nrhs == 0) {
	return 0;
    }

    if (notran) {

/*
          Solve A * X = B.

          Apply row interchanges to the right hand sides.
*/

	FUNC5(nrhs, &b[b_offset], ldb, &c__1, n, &ipiv[1], &c__1);

/*        Solve L*X = B, overwriting B with X. */

	FUNC4("Left", "Lower", "No transpose", "Unit", n, nrhs, &c_b57, &a[
		a_offset], lda, &b[b_offset], ldb);

/*        Solve U*X = B, overwriting B with X. */

	FUNC4("Left", "Upper", "No transpose", "Non-unit", n, nrhs, &c_b57, &
		a[a_offset], lda, &b[b_offset], ldb);
    } else {

/*
          Solve A**T * X = B  or A**H * X = B.

          Solve U'*X = B, overwriting B with X.
*/

	FUNC4("Left", "Upper", trans, "Non-unit", n, nrhs, &c_b57, &a[
		a_offset], lda, &b[b_offset], ldb);

/*        Solve L'*X = B, overwriting B with X. */

	FUNC4("Left", "Lower", trans, "Unit", n, nrhs, &c_b57, &a[a_offset],
		lda, &b[b_offset], ldb);

/*        Apply row interchanges to the solution vectors. */

	FUNC5(nrhs, &b[b_offset], ldb, &c__1, n, &ipiv[1], &c_n1);
    }

    return 0;

/*     End of ZGETRS */

}