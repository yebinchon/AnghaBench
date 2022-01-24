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
typedef  float real ;
typedef  int integer ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

integer FUNC1(integer *m, integer *n, real *a, integer *lda)
{
    /* System generated locals */
    integer a_dim1, a_offset, ret_val, i__1;

    /* Local variables */
    static integer i__, j;


/*
    -- LAPACK auxiliary routine (version 3.2.2)                        --

    -- June 2010                                                       --

    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--


    Purpose
    =======

    ILASLR scans A for its last non-zero row.

    Arguments
    =========

    M       (input) INTEGER
            The number of rows of the matrix A.

    N       (input) INTEGER
            The number of columns of the matrix A.

    A       (input) REAL array, dimension (LDA,N)
            The m by n matrix A.

    LDA     (input) INTEGER
            The leading dimension of the array A. LDA >= max(1,M).

    =====================================================================


       Quick test for the common case where one corner is non-zero.
*/
    /* Parameter adjustments */
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;

    /* Function Body */
    if (*m == 0) {
	ret_val = *m;
    } else if (a[*m + a_dim1] != 0.f || a[*m + *n * a_dim1] != 0.f) {
	ret_val = *m;
    } else {
/*     Scan up each column tracking the last zero row seen. */
	ret_val = 0;
	i__1 = *n;
	for (j = 1; j <= i__1; ++j) {
	    for (i__ = *m; i__ >= 1; --i__) {
		if (a[i__ + j * a_dim1] != 0.f) {
		    goto L10;
		}
	    }
L10:
	    ret_val = FUNC0(ret_val,i__);
	}
    }
    return ret_val;
}