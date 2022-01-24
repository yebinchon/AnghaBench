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
struct TYPE_4__ {scalar_t__ relkind; int /*<<< orphan*/  relname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* Form_pg_class ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_TRUNCATE ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  allowSystemTableMods ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(Oid relid, Form_pg_class reltuple)
{
	AclResult	aclresult;
	char	   *relname = FUNC2(reltuple->relname);

	/*
	 * Only allow truncate on regular tables and partitioned tables (although,
	 * the latter are only being included here for the following checks; no
	 * physical truncation will occur in their case.)
	 */
	if (reltuple->relkind != RELKIND_RELATION &&
		reltuple->relkind != RELKIND_PARTITIONED_TABLE)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC6("\"%s\" is not a table", relname)));

	/* Permissions checks */
	aclresult = FUNC8(relid, FUNC0(), ACL_TRUNCATE);
	if (aclresult != ACLCHECK_OK)
		FUNC3(aclresult, FUNC7(reltuple->relkind),
					   relname);

	if (!allowSystemTableMods && FUNC1(relid, reltuple))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC6("permission denied: \"%s\" is a system catalog",
						relname)));
}