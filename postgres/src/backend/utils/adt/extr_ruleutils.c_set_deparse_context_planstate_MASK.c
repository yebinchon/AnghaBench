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
struct TYPE_3__ {int /*<<< orphan*/ * ancestors; } ;
typedef  TYPE_1__ deparse_namespace ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

List *
FUNC4(List *dpcontext,
							  Node *planstate, List *ancestors)
{
	deparse_namespace *dpns;

	/* Should always have one-entry namespace list for Plan deparsing */
	FUNC0(FUNC2(dpcontext) == 1);
	dpns = (deparse_namespace *) FUNC1(dpcontext);

	/* Set our attention on the specific plan node passed in */
	FUNC3(dpns, (PlanState *) planstate);
	dpns->ancestors = ancestors;

	return dpcontext;
}