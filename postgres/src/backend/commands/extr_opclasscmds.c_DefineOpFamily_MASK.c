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
struct TYPE_3__ {int /*<<< orphan*/  amname; int /*<<< orphan*/  opfamilyname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__ CreateOpFamilyStmt ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

ObjectAddress
FUNC11(CreateOpFamilyStmt *stmt)
{
	char	   *opfname;		/* name of opfamily we're creating */
	Oid			amoid,			/* our AM's oid */
				namespaceoid;	/* namespace to create opfamily in */
	AclResult	aclresult;

	/* Convert list of names to a name and namespace */
	namespaceoid = FUNC2(stmt->opfamilyname,
													 &opfname);

	/* Check we have creation rights in target namespace */
	aclresult = FUNC9(namespaceoid, FUNC1(), ACL_CREATE);
	if (aclresult != ACLCHECK_OK)
		FUNC3(aclresult, OBJECT_SCHEMA,
					   FUNC8(namespaceoid));

	/* Get access method OID, throwing an error if it doesn't exist. */
	amoid = FUNC7(stmt->amname, false);

	/* XXX Should we make any privilege check against the AM? */

	/*
	 * Currently, we require superuser privileges to create an opfamily. See
	 * comments in DefineOpClass.
	 */
	if (!FUNC10())
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC6("must be superuser to create an operator family")));

	/* Insert pg_opfamily catalog entry */
	return FUNC0(stmt->amname, opfname, namespaceoid, amoid);
}