#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ndims; } ;
typedef  int /*<<< orphan*/  SortSupportData ;
typedef  TYPE_1__* MultiSortSupport ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MultiSortSupportData ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  ssup ; 

MultiSortSupport
FUNC3(int ndims)
{
	MultiSortSupport mss;

	FUNC0(ndims >= 2);

	mss = (MultiSortSupport) FUNC2(FUNC1(MultiSortSupportData, ssup)
									 + sizeof(SortSupportData) * ndims);

	mss->ndims = ndims;

	return mss;
}