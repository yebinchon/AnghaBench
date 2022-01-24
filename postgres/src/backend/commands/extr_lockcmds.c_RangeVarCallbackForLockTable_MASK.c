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
struct TYPE_3__ {int /*<<< orphan*/  relname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyXactFlags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char RELKIND_PARTITIONED_TABLE ; 
 char RELKIND_RELATION ; 
 char RELKIND_VIEW ; 
 char RELPERSISTENCE_TEMP ; 
 int /*<<< orphan*/  XACT_FLAGS_ACCESSEDTEMPNAMESPACE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char FUNC7 (int /*<<< orphan*/ ) ; 
 char FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 

__attribute__((used)) static void
FUNC10(const RangeVar *rv, Oid relid, Oid oldrelid,
							 void *arg)
{
	LOCKMODE	lockmode = *(LOCKMODE *) arg;
	char		relkind;
	char		relpersistence;
	AclResult	aclresult;

	if (!FUNC2(relid))
		return;					/* doesn't exist, so no permissions check */
	relkind = FUNC8(relid);
	if (!relkind)
		return;					/* woops, concurrently dropped; no permissions
								 * check */

	/* Currently, we only allow plain tables or views to be locked */
	if (relkind != RELKIND_RELATION && relkind != RELKIND_PARTITIONED_TABLE &&
		relkind != RELKIND_VIEW)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC6("\"%s\" is not a table or view",
						rv->relname)));

	/*
	 * Make note if a temporary relation has been accessed in this
	 * transaction.
	 */
	relpersistence = FUNC7(relid);
	if (relpersistence == RELPERSISTENCE_TEMP)
		MyXactFlags |= XACT_FLAGS_ACCESSEDTEMPNAMESPACE;

	/* Check permissions. */
	aclresult = FUNC1(relid, lockmode, FUNC0());
	if (aclresult != ACLCHECK_OK)
		FUNC3(aclresult, FUNC9(FUNC8(relid)), rv->relname);
}