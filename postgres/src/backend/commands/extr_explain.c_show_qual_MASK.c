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
typedef  int /*<<< orphan*/  PlanState ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  ExplainState ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(List *qual, const char *qlabel,
		  PlanState *planstate, List *ancestors,
		  bool useprefix, ExplainState *es)
{
	Node	   *node;

	/* No work if empty qual */
	if (qual == NIL)
		return;

	/* Convert AND list to explicit AND */
	node = (Node *) FUNC0(qual);

	/* And show it */
	FUNC1(node, qlabel, planstate, ancestors, useprefix, es);
}