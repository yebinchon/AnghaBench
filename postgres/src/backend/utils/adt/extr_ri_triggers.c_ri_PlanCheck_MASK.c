#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  relowner; } ;
struct TYPE_5__ {scalar_t__ constr_queryno; } ;
typedef  int /*<<< orphan*/ * SPIPlanPtr ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ RI_QueryKey ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ RI_PLAN_LAST_ON_PK ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int SECURITY_LOCAL_USERID_CHANGE ; 
 int SECURITY_NOFORCE_RLS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPI_result ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static SPIPlanPtr
FUNC8(const char *querystr, int nargs, Oid *argtypes,
			 RI_QueryKey *qkey, Relation fk_rel, Relation pk_rel)
{
	SPIPlanPtr	qplan;
	Relation	query_rel;
	Oid			save_userid;
	int			save_sec_context;

	/*
	 * Use the query type code to determine whether the query is run against
	 * the PK or FK table; we'll do the check as that table's owner
	 */
	if (qkey->constr_queryno <= RI_PLAN_LAST_ON_PK)
		query_rel = pk_rel;
	else
		query_rel = fk_rel;

	/* Switch to proper UID to perform check as */
	FUNC0(&save_userid, &save_sec_context);
	FUNC5(FUNC1(query_rel)->relowner,
						   save_sec_context | SECURITY_LOCAL_USERID_CHANGE |
						   SECURITY_NOFORCE_RLS);

	/* Create the plan */
	qplan = FUNC3(querystr, nargs, argtypes);

	if (qplan == NULL)
		FUNC6(ERROR, "SPI_prepare returned %s for %s", FUNC4(SPI_result), querystr);

	/* Restore UID and security context */
	FUNC5(save_userid, save_sec_context);

	/* Save the plan */
	FUNC2(qplan);
	FUNC7(qkey, qplan);

	return qplan;
}