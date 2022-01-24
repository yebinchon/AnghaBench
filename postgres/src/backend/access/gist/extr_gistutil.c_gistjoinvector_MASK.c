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
typedef  int /*<<< orphan*/  IndexTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (void*,int) ; 

IndexTuple *
FUNC2(IndexTuple *itvec, int *len, IndexTuple *additvec, int addlen)
{
	itvec = (IndexTuple *) FUNC1((void *) itvec, sizeof(IndexTuple) * ((*len) + addlen));
	FUNC0(&itvec[*len], additvec, sizeof(IndexTuple) * addlen);
	*len += addlen;
	return itvec;
}