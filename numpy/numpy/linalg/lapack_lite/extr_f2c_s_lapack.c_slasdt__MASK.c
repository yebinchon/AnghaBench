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
 float FUNC0 (float) ; 
 int FUNC1 (int,int) ; 

int FUNC2(integer *n, integer *lvl, integer *nd, integer *
	inode, integer *ndiml, integer *ndimr, integer *msub)
{
    /* System generated locals */
    integer i__1, i__2;

    /* Local variables */
    static integer i__, il, ir, maxn;
    static real temp;
    static integer nlvl, llst, ncrnt;


/*
    -- LAPACK auxiliary routine (version 3.2.2) --
    -- LAPACK is a software package provided by Univ. of Tennessee,    --
    -- Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd..--
       June 2010


    Purpose
    =======

    SLASDT creates a tree of subproblems for bidiagonal divide and
    conquer.

    Arguments
    =========

     N      (input) INTEGER
            On entry, the number of diagonal elements of the
            bidiagonal matrix.

     LVL    (output) INTEGER
            On exit, the number of levels on the computation tree.

     ND     (output) INTEGER
            On exit, the number of nodes on the tree.

     INODE  (output) INTEGER array, dimension ( N )
            On exit, centers of subproblems.

     NDIML  (output) INTEGER array, dimension ( N )
            On exit, row dimensions of left children.

     NDIMR  (output) INTEGER array, dimension ( N )
            On exit, row dimensions of right children.

     MSUB   (input) INTEGER
            On entry, the maximum row dimension each subproblem at the
            bottom of the tree can be of.

    Further Details
    ===============

    Based on contributions by
       Ming Gu and Huan Ren, Computer Science Division, University of
       California at Berkeley, USA

    =====================================================================


       Find the number of levels on the tree.
*/

    /* Parameter adjustments */
    --ndimr;
    --ndiml;
    --inode;

    /* Function Body */
    maxn = FUNC1(1,*n);
    temp = FUNC0((real) maxn / (real) (*msub + 1)) / FUNC0(2.f);
    *lvl = (integer) temp + 1;

    i__ = *n / 2;
    inode[1] = i__ + 1;
    ndiml[1] = i__;
    ndimr[1] = *n - i__ - 1;
    il = 0;
    ir = 1;
    llst = 1;
    i__1 = *lvl - 1;
    for (nlvl = 1; nlvl <= i__1; ++nlvl) {

/*
          Constructing the tree at (NLVL+1)-st level. The number of
          nodes created on this level is LLST * 2.
*/

	i__2 = llst - 1;
	for (i__ = 0; i__ <= i__2; ++i__) {
	    il += 2;
	    ir += 2;
	    ncrnt = llst + i__;
	    ndiml[il] = ndiml[ncrnt] / 2;
	    ndimr[il] = ndiml[ncrnt] - ndiml[il] - 1;
	    inode[il] = inode[ncrnt] - ndimr[il] - 1;
	    ndiml[ir] = ndimr[ncrnt] / 2;
	    ndimr[ir] = ndimr[ncrnt] - ndiml[ir] - 1;
	    inode[ir] = inode[ncrnt] + ndiml[ir] + 1;
/* L10: */
	}
	llst <<= 1;
/* L20: */
    }
    *nd = (llst << 1) - 1;

    return 0;

/*     End of SLASDT */

}