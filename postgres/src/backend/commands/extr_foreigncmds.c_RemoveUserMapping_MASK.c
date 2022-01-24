#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  servername; int /*<<< orphan*/  missing_ok; scalar_t__ user; } ;
struct TYPE_10__ {int /*<<< orphan*/  servername; int /*<<< orphan*/  serverid; } ;
struct TYPE_9__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_8__ {scalar_t__ roletype; int /*<<< orphan*/  rolename; } ;
typedef  TYPE_1__ RoleSpec ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  TYPE_3__ ForeignServer ;
typedef  TYPE_4__ DropUserMappingStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_ID_PUBLIC ; 
 int /*<<< orphan*/  Anum_pg_user_mapping_oid ; 
 int /*<<< orphan*/  DROP_CASCADE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ROLESPEC_PUBLIC ; 
 int /*<<< orphan*/  USERMAPPINGUSERSERVER ; 
 int /*<<< orphan*/  UserMappingRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC12(DropUserMappingStmt *stmt)
{
	ObjectAddress object;
	Oid			useId;
	Oid			umId;
	ForeignServer *srv;
	RoleSpec   *role = (RoleSpec *) stmt->user;

	if (role->roletype == ROLESPEC_PUBLIC)
		useId = ACL_ID_PUBLIC;
	else
	{
		useId = FUNC9(stmt->user, stmt->missing_ok);
		if (!FUNC4(useId))
		{
			/*
			 * IF EXISTS specified, role not found and not public. Notice this
			 * and leave.
			 */
			FUNC5(NOTICE, "role \"%s\" does not exist, skipping",
				 role->rolename);
			return InvalidOid;
		}
	}

	srv = FUNC0(stmt->servername, true);

	if (!srv)
	{
		if (!stmt->missing_ok)
			FUNC6(ERROR,
					(FUNC7(ERRCODE_UNDEFINED_OBJECT),
					 FUNC8("server \"%s\" does not exist",
							stmt->servername)));
		/* IF EXISTS, just note it */
		FUNC6(NOTICE,
				(FUNC8("server \"%s\" does not exist, skipping",
						stmt->servername)));
		return InvalidOid;
	}

	umId = FUNC1(USERMAPPINGUSERSERVER, Anum_pg_user_mapping_oid,
						   FUNC3(useId),
						   FUNC3(srv->serverid));

	if (!FUNC4(umId))
	{
		if (!stmt->missing_ok)
			FUNC6(ERROR,
					(FUNC7(ERRCODE_UNDEFINED_OBJECT),
					 FUNC8("user mapping for \"%s\" does not exist for server \"%s\"",
							FUNC2(useId), stmt->servername)));

		/* IF EXISTS specified, just note it */
		FUNC6(NOTICE,
				(FUNC8("user mapping for \"%s\" does not exist for server \"%s\", skipping",
						FUNC2(useId), stmt->servername)));
		return InvalidOid;
	}

	FUNC11(useId, srv->serverid, srv->servername);

	/*
	 * Do the deletion
	 */
	object.classId = UserMappingRelationId;
	object.objectId = umId;
	object.objectSubId = 0;

	FUNC10(&object, DROP_CASCADE, 0);

	return umId;
}