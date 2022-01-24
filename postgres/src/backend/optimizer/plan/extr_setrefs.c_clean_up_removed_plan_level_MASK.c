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
struct TYPE_5__ {int /*<<< orphan*/  targetlist; int /*<<< orphan*/  initPlan; } ;
typedef  TYPE_1__ Plan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Plan *
FUNC2(Plan *parent, Plan *child)
{
	/* We have to be sure we don't lose any initplans */
	child->initPlan = FUNC1(parent->initPlan,
								  child->initPlan);

	/*
	 * We also have to transfer the parent's column labeling info into the
	 * child, else columns sent to client will be improperly labeled if this
	 * is the topmost plan level.  resjunk and so on may be important too.
	 */
	FUNC0(child->targetlist, parent->targetlist);

	return child;
}