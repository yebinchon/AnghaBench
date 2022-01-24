#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ pathtarget; TYPE_1__* param_info; TYPE_2__* parent; } ;
struct TYPE_6__ {scalar_t__ reltarget; int /*<<< orphan*/ * relids; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ppi_req_outer; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_3__ Path ;

/* Variables and functions */
 int /*<<< orphan*/  NodeTag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  parallel_aware ; 
 int /*<<< orphan*/  parallel_safe ; 
 int /*<<< orphan*/  parallel_workers ; 
 int /*<<< orphan*/  pathkeys ; 
 int /*<<< orphan*/  pathtarget ; 
 int /*<<< orphan*/  pathtype ; 
 int /*<<< orphan*/  rows ; 
 int /*<<< orphan*/  startup_cost ; 
 int /*<<< orphan*/  total_cost ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const Path *node)
{
	FUNC1(pathtype, NodeTag);
	FUNC5(str, " :parent_relids ");
	FUNC6(str, node->parent->relids);
	if (node->pathtarget != node->parent->reltarget)
		FUNC4(pathtarget);
	FUNC5(str, " :required_outer ");
	if (node->param_info)
		FUNC6(str, node->param_info->ppi_req_outer);
	else
		FUNC6(str, NULL);
	FUNC0(parallel_aware);
	FUNC0(parallel_safe);
	FUNC3(parallel_workers);
	FUNC2(rows, "%.0f");
	FUNC2(startup_cost, "%.2f");
	FUNC2(total_cost, "%.2f");
	FUNC4(pathkeys);
}