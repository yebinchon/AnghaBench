#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int rt_index; int sublevels_up; } ;
typedef  TYPE_1__ rangeTableEntry_used_context ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rangeTableEntry_used_walker ; 

bool
FUNC1(Node *node, int rt_index, int sublevels_up)
{
	rangeTableEntry_used_context context;

	context.rt_index = rt_index;
	context.sublevels_up = sublevels_up;

	/*
	 * Must be prepared to start with a Query or a bare expression tree; if
	 * it's a Query, we don't want to increment sublevels_up.
	 */
	return FUNC0(node,
										   rangeTableEntry_used_walker,
										   (void *) &context,
										   0);
}