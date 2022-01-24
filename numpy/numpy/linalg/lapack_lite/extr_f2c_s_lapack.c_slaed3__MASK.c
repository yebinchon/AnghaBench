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
typedef  int integer ;
typedef  void* doublereal ;

/* Variables and functions */
 int c__1 ; 
 int c_b15 ; 
 int c_b29 ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*,int*,int*,int*,int*,int*) ; 
 int FUNC6 (int) ; 

int FUNC7(integer *k, integer *n, integer *n1, real *d__,
	real *q, integer *ldq, real *rho, real *dlamda, real *q2, integer *
	indx, integer *ctot, real *w, real *s, integer *info)
{
    /* System generated locals */
    integer q_dim1, q_offset, i__1, i__2;
    real r__1;

    /* Local variables */
    static integer i__, j, n2, n12, ii, n23, iq2;
    static real temp;
    extern doublereal FUNC8(integer *, real *, integer *);
    extern /* Subroutine */ int FUNC9(char *, char *, integer *, integer *,
	    integer *, real *, real *, integer *, real *, integer *, real *,
	    real *, integer *), FUNC2(integer *, real *,
	    integer *, real *, integer *), FUNC4(integer *, integer *, real
	    *, real *, real *, real *, real *, integer *);
    extern doublereal FUNC10(real *, real *);
    extern /* Subroutine */ int FUNC11(char *, integer *), FUNC3(
	    char *, integer *, integer *, real *, integer *, real *, integer *
	    ), FUNC5(char *, integer *, integer *, real *, real *,
	    real *, integer *);


/*
    -- LAPACK routine (version 3.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       November 2006


    Purpose
    =======

    SLAED3 finds the roots of the secular equation, as defined by the
    values in D, W, and RHO, between 1 and K.  It makes the
    appropriate calls to SLAED4 and then updates the eigenvectors by
    multiplying the matrix of eigenvectors of the pair of eigensystems
    being combined by the matrix of eigenvectors of the K-by-K system
    which is solved here.

    This code makes very mild assumptions about floating point
    arithmetic. It will work on machines with a guard digit in
    add/subtract, or on those binary machines without guard digits
    which subtract like the Cray X-MP, Cray Y-MP, Cray C-90, or Cray-2.
    It could conceivably fail on hexadecimal or decimal machines
    without guard digits, but we know of none.

    Arguments
    =========

    K       (input) INTEGER
            The number of terms in the rational function to be solved by
            SLAED4.  K >= 0.

    N       (input) INTEGER
            The number of rows and columns in the Q matrix.
            N >= K (deflation may result in N>K).

    N1      (input) INTEGER
            The location of the last eigenvalue in the leading submatrix.
            min(1,N) <= N1 <= N/2.

    D       (output) REAL array, dimension (N)
            D(I) contains the updated eigenvalues for
            1 <= I <= K.

    Q       (output) REAL array, dimension (LDQ,N)
            Initially the first K columns are used as workspace.
            On output the columns 1 to K contain
            the updated eigenvectors.

    LDQ     (input) INTEGER
            The leading dimension of the array Q.  LDQ >= max(1,N).

    RHO     (input) REAL
            The value of the parameter in the rank one update equation.
            RHO >= 0 required.

    DLAMDA  (input/output) REAL array, dimension (K)
            The first K elements of this array contain the old roots
            of the deflated updating problem.  These are the poles
            of the secular equation. May be changed on output by
            having lowest order bit set to zero on Cray X-MP, Cray Y-MP,
            Cray-2, or Cray C-90, as described above.

    Q2      (input) REAL array, dimension (LDQ2, N)
            The first K columns of this matrix contain the non-deflated
            eigenvectors for the split problem.

    INDX    (input) INTEGER array, dimension (N)
            The permutation used to arrange the columns of the deflated
            Q matrix into three groups (see SLAED2).
            The rows of the eigenvectors found by SLAED4 must be likewise
            permuted before the matrix multiply can take place.

    CTOT    (input) INTEGER array, dimension (4)
            A count of the total number of the various types of columns
            in Q, as described in INDX.  The fourth column type is any
            column which has been deflated.

    W       (input/output) REAL array, dimension (K)
            The first K elements of this array contain the components
            of the deflation-adjusted updating vector. Destroyed on
            output.

    S       (workspace) REAL array, dimension (N1 + 1)*K
            Will contain the eigenvectors of the repaired matrix which
            will be multiplied by the previously accumulated eigenvectors
            to update the system.

    LDS     (input) INTEGER
            The leading dimension of S.  LDS >= max(1,K).

    INFO    (output) INTEGER
            = 0:  successful exit.
            < 0:  if INFO = -i, the i-th argument had an illegal value.
            > 0:  if INFO = 1, an eigenvalue did not converge

    Further Details
    ===============

    Based on contributions by
       Jeff Rutter, Computer Science Division, University of California
       at Berkeley, USA
    Modified by Francoise Tisseur, University of Tennessee.

    =====================================================================


       Test the input parameters.
*/

    /* Parameter adjustments */
    --d__;
    q_dim1 = *ldq;
    q_offset = 1 + q_dim1;
    q -= q_offset;
    --dlamda;
    --q2;
    --indx;
    --ctot;
    --w;
    --s;

    /* Function Body */
    *info = 0;

    if (*k < 0) {
	*info = -1;
    } else if (*n < *k) {
	*info = -2;
    } else if (*ldq < FUNC0(1,*n)) {
	*info = -6;
    }
    if (*info != 0) {
	i__1 = -(*info);
	FUNC11("SLAED3", &i__1);
	return 0;
    }

/*     Quick return if possible */

    if (*k == 0) {
	return 0;
    }

/*
       Modify values DLAMDA(i) to make sure all DLAMDA(i)-DLAMDA(j) can
       be computed with high relative accuracy (barring over/underflow).
       This is a problem on machines without a guard digit in
       add/subtract (Cray XMP, Cray YMP, Cray C 90 and Cray 2).
       The following code replaces DLAMDA(I) by 2*DLAMDA(I)-DLAMDA(I),
       which on any of these machines zeros out the bottommost
       bit of DLAMDA(I) if it is 1; this makes the subsequent
       subtractions DLAMDA(I)-DLAMDA(J) unproblematic when cancellation
       occurs. On binary machines with a guard digit (almost all
       machines) it does not change DLAMDA(I) at all. On hexadecimal
       and decimal machines with a guard digit, it slightly
       changes the bottommost bits of DLAMDA(I). It does not account
       for hexadecimal or decimal machines without guard digits
       (we know of none). We use a subroutine call to compute
       2*DLAMBDA(I) to prevent optimizing compilers from eliminating
       this code.
*/

    i__1 = *k;
    for (i__ = 1; i__ <= i__1; ++i__) {
	dlamda[i__] = FUNC10(&dlamda[i__], &dlamda[i__]) - dlamda[i__];
/* L10: */
    }

    i__1 = *k;
    for (j = 1; j <= i__1; ++j) {
	FUNC4(k, &j, &dlamda[1], &w[1], &q[j * q_dim1 + 1], rho, &d__[j],
		info);

/*        If the zero finder fails, the computation is terminated. */

	if (*info != 0) {
	    goto L120;
	}
/* L20: */
    }

    if (*k == 1) {
	goto L110;
    }
    if (*k == 2) {
	i__1 = *k;
	for (j = 1; j <= i__1; ++j) {
	    w[1] = q[j * q_dim1 + 1];
	    w[2] = q[j * q_dim1 + 2];
	    ii = indx[1];
	    q[j * q_dim1 + 1] = w[ii];
	    ii = indx[2];
	    q[j * q_dim1 + 2] = w[ii];
/* L30: */
	}
	goto L110;
    }

/*     Compute updated W. */

    FUNC2(k, &w[1], &c__1, &s[1], &c__1);

/*     Initialize W(I) = Q(I,I) */

    i__1 = *ldq + 1;
    FUNC2(k, &q[q_offset], &i__1, &w[1], &c__1);
    i__1 = *k;
    for (j = 1; j <= i__1; ++j) {
	i__2 = j - 1;
	for (i__ = 1; i__ <= i__2; ++i__) {
	    w[i__] *= q[i__ + j * q_dim1] / (dlamda[i__] - dlamda[j]);
/* L40: */
	}
	i__2 = *k;
	for (i__ = j + 1; i__ <= i__2; ++i__) {
	    w[i__] *= q[i__ + j * q_dim1] / (dlamda[i__] - dlamda[j]);
/* L50: */
	}
/* L60: */
    }
    i__1 = *k;
    for (i__ = 1; i__ <= i__1; ++i__) {
	r__1 = FUNC6(-w[i__]);
	w[i__] = FUNC1(&r__1, &s[i__]);
/* L70: */
    }

/*     Compute eigenvectors of the modified rank-1 modification. */

    i__1 = *k;
    for (j = 1; j <= i__1; ++j) {
	i__2 = *k;
	for (i__ = 1; i__ <= i__2; ++i__) {
	    s[i__] = w[i__] / q[i__ + j * q_dim1];
/* L80: */
	}
	temp = FUNC8(k, &s[1], &c__1);
	i__2 = *k;
	for (i__ = 1; i__ <= i__2; ++i__) {
	    ii = indx[i__];
	    q[i__ + j * q_dim1] = s[ii] / temp;
/* L90: */
	}
/* L100: */
    }

/*     Compute the updated eigenvectors. */

L110:

    n2 = *n - *n1;
    n12 = ctot[1] + ctot[2];
    n23 = ctot[2] + ctot[3];

    FUNC3("A", &n23, k, &q[ctot[1] + 1 + q_dim1], ldq, &s[1], &n23);
    iq2 = *n1 * n12 + 1;
    if (n23 != 0) {
	FUNC9("N", "N", &n2, k, &n23, &c_b15, &q2[iq2], &n2, &s[1], &n23, &
		c_b29, &q[*n1 + 1 + q_dim1], ldq);
    } else {
	FUNC5("A", &n2, k, &c_b29, &c_b29, &q[*n1 + 1 + q_dim1], ldq);
    }

    FUNC3("A", &n12, k, &q[q_offset], ldq, &s[1], &n12);
    if (n12 != 0) {
	FUNC9("N", "N", n1, k, &n12, &c_b15, &q2[1], n1, &s[1], &n12, &c_b29,
		 &q[q_offset], ldq);
    } else {
	FUNC5("A", n1, k, &c_b29, &c_b29, &q[q_dim1 + 1], ldq);
    }


L120:
    return 0;

/*     End of SLAED3 */

}