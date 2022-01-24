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
struct TYPE_3__ {int is_join; int varRelid; int selectivity; int /*<<< orphan*/ * sjinfo; int /*<<< orphan*/  jointype; void* inputcollid; int /*<<< orphan*/ * args; void* funcid; int /*<<< orphan*/ * root; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ SupportRequestSelectivity ;
typedef  int /*<<< orphan*/  SpecialJoinInfo ;
typedef  int /*<<< orphan*/  Selectivity ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JoinType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  T_SupportRequestSelectivity ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,double) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

Selectivity
FUNC5(PlannerInfo *root,
					 Oid funcid,
					 List *args,
					 Oid inputcollid,
					 bool is_join,
					 int varRelid,
					 JoinType jointype,
					 SpecialJoinInfo *sjinfo)
{
	RegProcedure prosupport = FUNC4(funcid);
	SupportRequestSelectivity req;
	SupportRequestSelectivity *sresult;

	/*
	 * If no support function is provided, use our historical default
	 * estimate, 0.3333333.  This seems a pretty unprincipled choice, but
	 * Postgres has been using that estimate for function calls since 1992.
	 * The hoariness of this behavior suggests that we should not be in too
	 * much hurry to use another value.
	 */
	if (!prosupport)
		return (Selectivity) 0.3333333;

	req.type = T_SupportRequestSelectivity;
	req.root = root;
	req.funcid = funcid;
	req.args = args;
	req.inputcollid = inputcollid;
	req.is_join = is_join;
	req.varRelid = varRelid;
	req.jointype = jointype;
	req.sjinfo = sjinfo;
	req.selectivity = -1;		/* to catch failure to set the value */

	sresult = (SupportRequestSelectivity *)
		FUNC0(FUNC1(prosupport,
										 FUNC2(&req)));

	/* If support function fails, use default */
	if (sresult != &req)
		return (Selectivity) 0.3333333;

	if (req.selectivity < 0.0 || req.selectivity > 1.0)
		FUNC3(ERROR, "invalid function selectivity: %f", req.selectivity);

	return (Selectivity) req.selectivity;
}