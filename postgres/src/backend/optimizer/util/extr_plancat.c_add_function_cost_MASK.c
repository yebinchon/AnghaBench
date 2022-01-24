#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int procost; int /*<<< orphan*/  prosupport; } ;
struct TYPE_7__ {int per_tuple; int /*<<< orphan*/  startup; } ;
struct TYPE_6__ {scalar_t__ per_tuple; scalar_t__ startup; int /*<<< orphan*/ * node; int /*<<< orphan*/  funcid; int /*<<< orphan*/ * root; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ SupportRequestCost ;
typedef  TYPE_2__ QualCost ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_proc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_SupportRequestCost ; 
 int cpu_operator_cost ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC10(PlannerInfo *root, Oid funcid, Node *node,
				  QualCost *cost)
{
	HeapTuple	proctup;
	Form_pg_proc procform;

	proctup = FUNC8(PROCOID, FUNC3(funcid));
	if (!FUNC2(proctup))
		FUNC9(ERROR, "cache lookup failed for function %u", funcid);
	procform = (Form_pg_proc) FUNC1(proctup);

	if (FUNC5(procform->prosupport))
	{
		SupportRequestCost req;
		SupportRequestCost *sresult;

		req.type = T_SupportRequestCost;
		req.root = root;
		req.funcid = funcid;
		req.node = node;

		/* Initialize cost fields so that support function doesn't have to */
		req.startup = 0;
		req.per_tuple = 0;

		sresult = (SupportRequestCost *)
			FUNC0(FUNC4(procform->prosupport,
											 FUNC6(&req)));

		if (sresult == &req)
		{
			/* Success, so accumulate support function's estimate into *cost */
			cost->startup += req.startup;
			cost->per_tuple += req.per_tuple;
			FUNC7(proctup);
			return;
		}
	}

	/* No support function, or it failed, so rely on procost */
	cost->per_tuple += procform->procost * cpu_operator_cost;

	FUNC7(proctup);
}