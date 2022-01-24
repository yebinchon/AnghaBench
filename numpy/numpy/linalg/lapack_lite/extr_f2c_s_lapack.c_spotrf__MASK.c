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
typedef  int /*<<< orphan*/  real ;
typedef  scalar_t__ logical ;
typedef  int integer ;
typedef  int /*<<< orphan*/  ftnlen ;

/* Variables and functions */
 int c__1 ; 
 int /*<<< orphan*/  c_b15 ; 
 int /*<<< orphan*/  c_b151 ; 
 int c_n1 ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int*) ; 

int FUNC5(char *uplo, integer *n, real *a, integer *lda,
	integer *info)
{
    /* System generated locals */
    integer a_dim1, a_offset, i__1, i__2, i__3, i__4;

    /* Local variables */
    static integer j, jb, nb;
    extern logical FUNC6(char *, char *);
    extern /* Subroutine */ int FUNC7(char *, char *, integer *, integer *,
	    integer *, real *, real *, integer *, real *, integer *, real *,
	    real *, integer *);
    static logical upper;
    extern /* Subroutine */ int FUNC8(char *, char *, char *, char *,
	    integer *, integer *, real *, real *, integer *, real *, integer *
	    ), FUNC3(char *, char *, integer
	    *, integer *, real *, real *, integer *, real *, real *, integer *
	    ), FUNC2(char *, integer *, real *, integer *,
	    integer *), FUNC4(char *, integer *);
    extern integer FUNC9(integer *, char *, char *, integer *, integer *,
	    integer *, integer *, ftnlen, ftnlen);


/*
    -- LAPACK routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    SPOTRF computes the Cholesky factorization of a real symmetric
    positive definite matrix A.

    The factorization has the form
       A = U**T * U,  if UPLO = 'U', or
       A = L  * L**T,  if UPLO = 'L',
    where U is an upper triangular matrix and L is lower triangular.

    This is the block version of the algorithm, calling Level 3 BLAS.

    Arguments
    =========

    UPLO    (input) CHARACTER*1
            = 'U':  Upper triangle of A is stored;
            = 'L':  Lower triangle of A is stored.

    N       (input) INTEGER
            The order of the matrix A.  N >= 0.

    A       (input/output) REAL array, dimension (LDA,N)
            On entry, the symmetric matrix A.  If UPLO = 'U', the leading
            N-by-N upper triangular part of A contains the upper
            triangular part of the matrix A, and the strictly lower
            triangular part of A is not referenced.  If UPLO = 'L', the
            leading N-by-N lower triangular part of A contains the lower
            triangular part of the matrix A, and the strictly upper
            triangular part of A is not referenced.

            On exit, if INFO = 0, the factor U or L from the Cholesky
            factorization A = U**T*U or A = L*L**T.

    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,N).

    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value
            > 0:  if INFO = i, the leading minor of order i is not
                  positive definite, and the factorization could not be
                  completed.

    =====================================================================


       Test the input parameters.
*/

    /* Parameter adjustments */
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;

    /* Function Body */
    *info = 0;
    upper = FUNC6(uplo, "U");
    if (! upper && ! FUNC6(uplo, "L")) {
	*info = -1;
    } else if (*n < 0) {
	*info = -2;
    } else if (*lda < FUNC0(1,*n)) {
	*info = -4;
    }
    if (*info != 0) {
	i__1 = -(*info);
	FUNC4("SPOTRF", &i__1);
	return 0;
    }

/*     Quick return if possible */

    if (*n == 0) {
	return 0;
    }

/*     Determine the block size for this environment. */

    nb = FUNC9(&c__1, "SPOTRF", uplo, n, &c_n1, &c_n1, &c_n1, (ftnlen)6, (
	    ftnlen)1);
    if (nb <= 1 || nb >= *n) {

/*        Use unblocked code. */

	FUNC2(uplo, n, &a[a_offset], lda, info);
    } else {

/*        Use blocked code. */

	if (upper) {

/*           Compute the Cholesky factorization A = U'*U. */

	    i__1 = *n;
	    i__2 = nb;
	    for (j = 1; i__2 < 0 ? j >= i__1 : j <= i__1; j += i__2) {

/*
                Update and factorize the current diagonal block and test
                for non-positive-definiteness.

   Computing MIN
*/
		i__3 = nb, i__4 = *n - j + 1;
		jb = FUNC1(i__3,i__4);
		i__3 = j - 1;
		FUNC3("Upper", "Transpose", &jb, &i__3, &c_b151, &a[j *
			a_dim1 + 1], lda, &c_b15, &a[j + j * a_dim1], lda);
		FUNC2("Upper", &jb, &a[j + j * a_dim1], lda, info);
		if (*info != 0) {
		    goto L30;
		}
		if (j + jb <= *n) {

/*                 Compute the current block row. */

		    i__3 = *n - j - jb + 1;
		    i__4 = j - 1;
		    FUNC7("Transpose", "No transpose", &jb, &i__3, &i__4, &
			    c_b151, &a[j * a_dim1 + 1], lda, &a[(j + jb) *
			    a_dim1 + 1], lda, &c_b15, &a[j + (j + jb) *
			    a_dim1], lda);
		    i__3 = *n - j - jb + 1;
		    FUNC8("Left", "Upper", "Transpose", "Non-unit", &jb, &
			    i__3, &c_b15, &a[j + j * a_dim1], lda, &a[j + (j
			    + jb) * a_dim1], lda);
		}
/* L10: */
	    }

	} else {

/*           Compute the Cholesky factorization A = L*L'. */

	    i__2 = *n;
	    i__1 = nb;
	    for (j = 1; i__1 < 0 ? j >= i__2 : j <= i__2; j += i__1) {

/*
                Update and factorize the current diagonal block and test
                for non-positive-definiteness.

   Computing MIN
*/
		i__3 = nb, i__4 = *n - j + 1;
		jb = FUNC1(i__3,i__4);
		i__3 = j - 1;
		FUNC3("Lower", "No transpose", &jb, &i__3, &c_b151, &a[j +
			a_dim1], lda, &c_b15, &a[j + j * a_dim1], lda);
		FUNC2("Lower", &jb, &a[j + j * a_dim1], lda, info);
		if (*info != 0) {
		    goto L30;
		}
		if (j + jb <= *n) {

/*                 Compute the current block column. */

		    i__3 = *n - j - jb + 1;
		    i__4 = j - 1;
		    FUNC7("No transpose", "Transpose", &i__3, &jb, &i__4, &
			    c_b151, &a[j + jb + a_dim1], lda, &a[j + a_dim1],
			    lda, &c_b15, &a[j + jb + j * a_dim1], lda);
		    i__3 = *n - j - jb + 1;
		    FUNC8("Right", "Lower", "Transpose", "Non-unit", &i__3, &
			    jb, &c_b15, &a[j + j * a_dim1], lda, &a[j + jb +
			    j * a_dim1], lda);
		}
/* L20: */
	    }
	}
    }
    goto L40;

L30:
    *info = *info + j - 1;

L40:
    return 0;

/*     End of SPOTRF */

}