#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ctes; int /*<<< orphan*/ * rtable_names; int /*<<< orphan*/ * rtable; } ;
typedef  TYPE_1__ deparse_namespace ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

List *
FUNC3(List *rtable, List *rtable_names)
{
	deparse_namespace *dpns;

	dpns = (deparse_namespace *) FUNC1(sizeof(deparse_namespace));

	/* Initialize fields that stay the same across the whole plan tree */
	dpns->rtable = rtable;
	dpns->rtable_names = rtable_names;
	dpns->ctes = NIL;

	/*
	 * Set up column name aliases.  We will get rather bogus results for join
	 * RTEs, but that doesn't matter because plan trees don't contain any join
	 * alias Vars.
	 */
	FUNC2(dpns);

	/* Return a one-deep namespace stack */
	return FUNC0(dpns);
}