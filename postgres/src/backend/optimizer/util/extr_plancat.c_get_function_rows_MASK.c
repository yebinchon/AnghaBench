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
struct TYPE_5__ {double prorows; int /*<<< orphan*/  prosupport; int /*<<< orphan*/  proretset; } ;
struct TYPE_4__ {double rows; int /*<<< orphan*/ * node; int /*<<< orphan*/  funcid; int /*<<< orphan*/ * root; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ SupportRequestRows ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_SupportRequestRows ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

double
FUNC11(PlannerInfo *root, Oid funcid, Node *node)
{
	HeapTuple	proctup;
	Form_pg_proc procform;
	double		result;

	proctup = FUNC9(PROCOID, FUNC4(funcid));
	if (!FUNC3(proctup))
		FUNC10(ERROR, "cache lookup failed for function %u", funcid);
	procform = (Form_pg_proc) FUNC2(proctup);

	FUNC0(procform->proretset);	/* else caller error */

	if (FUNC6(procform->prosupport))
	{
		SupportRequestRows req;
		SupportRequestRows *sresult;

		req.type = T_SupportRequestRows;
		req.root = root;
		req.funcid = funcid;
		req.node = node;

		req.rows = 0;			/* just for sanity */

		sresult = (SupportRequestRows *)
			FUNC1(FUNC5(procform->prosupport,
											 FUNC7(&req)));

		if (sresult == &req)
		{
			/* Success */
			FUNC8(proctup);
			return req.rows;
		}
	}

	/* No support function, or it failed, so rely on prorows */
	result = procform->prorows;

	FUNC8(proctup);

	return result;
}