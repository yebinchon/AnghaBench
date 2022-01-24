#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ paramkind; int paramid; } ;
struct TYPE_7__ {int /*<<< orphan*/ * multiexpr_params; } ;
typedef  TYPE_1__ PlannerInfo ;
typedef  TYPE_2__ Param ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PARAM_MULTIEXPR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static Node *
FUNC4(PlannerInfo *root, Param *p)
{
	if (p->paramkind == PARAM_MULTIEXPR)
	{
		int			subqueryid = p->paramid >> 16;
		int			colno = p->paramid & 0xFFFF;
		List	   *params;

		if (subqueryid <= 0 ||
			subqueryid > FUNC2(root->multiexpr_params))
			FUNC1(ERROR, "unexpected PARAM_MULTIEXPR ID: %d", p->paramid);
		params = (List *) FUNC3(root->multiexpr_params, subqueryid - 1);
		if (colno <= 0 || colno > FUNC2(params))
			FUNC1(ERROR, "unexpected PARAM_MULTIEXPR ID: %d", p->paramid);
		return FUNC0(FUNC3(params, colno - 1));
	}
	return (Node *) FUNC0(p);
}