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
struct TYPE_5__ {int /*<<< orphan*/  per_tuple; int /*<<< orphan*/  startup; } ;
struct TYPE_4__ {int /*<<< orphan*/ * sortgrouprefs; int /*<<< orphan*/  exprs; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ PathTarget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ cost ; 
 int /*<<< orphan*/  exprs ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  width ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const PathTarget *node)
{
	FUNC3("PATHTARGET");

	FUNC2(exprs);
	if (node->sortgrouprefs)
	{
		int			i;

		FUNC5(str, " :sortgrouprefs");
		for (i = 0; i < FUNC6(node->exprs); i++)
			FUNC4(str, " %u", node->sortgrouprefs[i]);
	}
	FUNC0(cost.startup, "%.2f");
	FUNC0(cost.per_tuple, "%.2f");
	FUNC1(width);
}