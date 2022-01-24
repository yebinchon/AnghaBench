#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TuplesortInstrumentation ;
struct TYPE_5__ {int num_workers; } ;
struct TYPE_4__ {TYPE_2__* shared_info; } ;
typedef  TYPE_1__ SortState ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 int SharedSortInfo ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int si ; 
 int /*<<< orphan*/  sinstrument ; 

void
FUNC3(SortState *node)
{
	Size		size;
	SharedSortInfo *si;

	if (node->shared_info == NULL)
		return;

	size = FUNC1(SharedSortInfo, sinstrument)
		+ node->shared_info->num_workers * sizeof(TuplesortInstrumentation);
	si = FUNC2(size);
	FUNC0(si, node->shared_info, size);
	node->shared_info = si;
}