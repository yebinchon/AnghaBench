#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ancestors; } ;
typedef  TYPE_1__ deparse_namespace ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  int /*<<< orphan*/  ListCell ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(deparse_namespace *dpns, ListCell *ancestor_cell,
				   deparse_namespace *save_dpns)
{
	PlanState  *ps = (PlanState *) FUNC0(ancestor_cell);

	/* Save state for restoration later */
	*save_dpns = *dpns;

	/* Build a new ancestor list with just this node's ancestors */
	dpns->ancestors =
		FUNC2(dpns->ancestors,
					   FUNC1(dpns->ancestors, ancestor_cell) + 1);

	/* Set attention on selected ancestor */
	FUNC3(dpns, ps);
}