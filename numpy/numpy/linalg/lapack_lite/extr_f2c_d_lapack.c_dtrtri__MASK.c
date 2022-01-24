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
typedef  int /*<<< orphan*/  ftnlen ;
typedef  int doublereal ;
typedef  char* address ;

/* Variables and functions */
 int c__1 ; 
 int /*<<< orphan*/  c__2 ; 
 int c_b15 ; 
 int /*<<< orphan*/  c_b151 ; 
 int c_n1 ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*,int*,int*,int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int*) ; 

int FUNC5(char *uplo, char *diag, integer *n, doublereal *
	a, integer *lda, integer *info)
{
    /* System generated locals */
    address a__1[2];
    integer a_dim1, a_offset, i__1, i__2[2], i__3, i__4, i__5;
    char ch__1[2];

    /* Local variables */
    static integer j, jb, nb, nn;
    extern logical FUNC6(char *, char *);
    extern /* Subroutine */ int FUNC7(char *, char *, char *, char *,
	    integer *, integer *, doublereal *, doublereal *, integer *,
	    doublereal *, integer *), FUNC0(
	    char *, char *, char *, char *, integer *, integer *, doublereal *
	    , doublereal *, integer *, doublereal *, integer *);
    static logical upper;
    extern /* Subroutine */ int FUNC8(char *, char *, integer *, doublereal
	    *, integer *, integer *), FUNC4(char *, integer
	    *);
    extern integer FUNC9(integer *, char *, char *, integer *, integer *,
	    integer *, integer *, ftnlen, ftnlen);
    static logical nounit;


/*
    -- LAPACK routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    DTRTRI computes the inverse of a real upper or lower triangular
    matrix A.

    This is the Level 3 BLAS version of the algorithm.

    Arguments
    =========

    UPLO    (input) CHARACTER*1
            = 'U':  A is upper triangular;
            = 'L':  A is lower triangular.

    DIAG    (input) CHARACTER*1
            = 'N':  A is non-unit triangular;
            = 'U':  A is unit triangular.

    N       (input) INTEGER
            The order of the matrix A.  N >= 0.

    A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
            On entry, the triangular matrix A.  If UPLO = 'U', the
            leading N-by-N upper triangular part of the array A contains
            the upper triangular matrix, and the strictly lower
            triangular part of A is not referenced.  If UPLO = 'L', the
            leading N-by-N lower triangular part of the array A contains
            the lower triangular matrix, and the strictly upper
            triangular part of A is not referenced.  If DIAG = 'U', the
            diagonal elements of A are also not referenced and are
            assumed to be 1.
            On exit, the (triangular) inverse of the original matrix, in
            the same storage format.

    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,N).

    INFO    (output) INTEGER
            = 0: successful exit
            < 0: if INFO = -i, the i-th argument had an illegal value
            > 0: if INFO = i, A(i,i) is exactly zero.  The triangular
                 matrix is singular and its inverse can not be computed.

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
    nounit = FUNC6(diag, "N");
    if (! upper && ! FUNC6(uplo, "L")) {
	*info = -1;
    } else if (! nounit && ! FUNC6(diag, "U")) {
	*info = -2;
    } else if (*n < 0) {
	*info = -3;
    } else if (*lda < FUNC1(1,*n)) {
	*info = -5;
    }
    if (*info != 0) {
	i__1 = -(*info);
	FUNC4("DTRTRI", &i__1);
	return 0;
    }

/*     Quick return if possible */

    if (*n == 0) {
	return 0;
    }

/*     Check for singularity if non-unit. */

    if (nounit) {
	i__1 = *n;
	for (*info = 1; *info <= i__1; ++(*info)) {
	    if (a[*info + *info * a_dim1] == 0.) {
		return 0;
	    }
/* L10: */
	}
	*info = 0;
    }

/*
       Determine the block size for this environment.

   Writing concatenation
*/
    i__2[0] = 1, a__1[0] = uplo;
    i__2[1] = 1, a__1[1] = diag;
    FUNC3(ch__1, a__1, i__2, &c__2, (ftnlen)2);
    nb = FUNC9(&c__1, "DTRTRI", ch__1, n, &c_n1, &c_n1, &c_n1, (ftnlen)6, (
	    ftnlen)2);
    if (nb <= 1 || nb >= *n) {

/*        Use unblocked code */

	FUNC8(uplo, diag, n, &a[a_offset], lda, info);
    } else {

/*        Use blocked code */

	if (upper) {

/*           Compute inverse of upper triangular matrix */

	    i__1 = *n;
	    i__3 = nb;
	    for (j = 1; i__3 < 0 ? j >= i__1 : j <= i__1; j += i__3) {
/* Computing MIN */
		i__4 = nb, i__5 = *n - j + 1;
		jb = FUNC2(i__4,i__5);

/*              Compute rows 1:j-1 of current block column */

		i__4 = j - 1;
		FUNC7("Left", "Upper", "No transpose", diag, &i__4, &jb, &
			c_b15, &a[a_offset], lda, &a[j * a_dim1 + 1], lda);
		i__4 = j - 1;
		FUNC0("Right", "Upper", "No transpose", diag, &i__4, &jb, &
			c_b151, &a[j + j * a_dim1], lda, &a[j * a_dim1 + 1],
			lda);

/*              Compute inverse of current diagonal block */

		FUNC8("Upper", diag, &jb, &a[j + j * a_dim1], lda, info);
/* L20: */
	    }
	} else {

/*           Compute inverse of lower triangular matrix */

	    nn = (*n - 1) / nb * nb + 1;
	    i__3 = -nb;
	    for (j = nn; i__3 < 0 ? j >= 1 : j <= 1; j += i__3) {
/* Computing MIN */
		i__1 = nb, i__4 = *n - j + 1;
		jb = FUNC2(i__1,i__4);
		if (j + jb <= *n) {

/*                 Compute rows j+jb:n of current block column */

		    i__1 = *n - j - jb + 1;
		    FUNC7("Left", "Lower", "No transpose", diag, &i__1, &jb,
			    &c_b15, &a[j + jb + (j + jb) * a_dim1], lda, &a[j
			    + jb + j * a_dim1], lda);
		    i__1 = *n - j - jb + 1;
		    FUNC0("Right", "Lower", "No transpose", diag, &i__1, &jb,
			     &c_b151, &a[j + j * a_dim1], lda, &a[j + jb + j *
			     a_dim1], lda);
		}

/*              Compute inverse of current diagonal block */

		FUNC8("Lower", diag, &jb, &a[j + j * a_dim1], lda, info);
/* L30: */
	    }
	}
    }

    return 0;

/*     End of DTRTRI */

}