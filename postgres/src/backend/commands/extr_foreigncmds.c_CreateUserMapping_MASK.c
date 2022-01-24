#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_23__ {int /*<<< orphan*/  options; int /*<<< orphan*/  servername; scalar_t__ if_not_exists; scalar_t__ user; } ;
struct TYPE_22__ {int /*<<< orphan*/  fdwvalidator; } ;
struct TYPE_21__ {int /*<<< orphan*/  serverid; int /*<<< orphan*/  fdwid; } ;
struct TYPE_20__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_19__ {int /*<<< orphan*/  rd_att; } ;
struct TYPE_18__ {scalar_t__ roletype; } ;
typedef  TYPE_1__ RoleSpec ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_4__ ForeignServer ;
typedef  TYPE_5__ ForeignDataWrapper ;
typedef  int Datum ;
typedef  TYPE_6__ CreateUserMappingStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_ID_PUBLIC ; 
 int Anum_pg_user_mapping_oid ; 
 int Anum_pg_user_mapping_umoptions ; 
 int Anum_pg_user_mapping_umserver ; 
 int Anum_pg_user_mapping_umuser ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ForeignServerRelationId ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 
 TYPE_3__ InvalidObjectAddress ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 int Natts_pg_user_mapping ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ ROLESPEC_PUBLIC ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  USERMAPPINGUSERSERVER ; 
 int /*<<< orphan*/  UserMappingOidIndexId ; 
 int /*<<< orphan*/  UserMappingRelationId ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC25(CreateUserMappingStmt *stmt)
{
	Relation	rel;
	Datum		useoptions;
	Datum		values[Natts_pg_user_mapping];
	bool		nulls[Natts_pg_user_mapping];
	HeapTuple	tuple;
	Oid			useId;
	Oid			umId;
	ObjectAddress myself;
	ObjectAddress referenced;
	ForeignServer *srv;
	ForeignDataWrapper *fdw;
	RoleSpec   *role = (RoleSpec *) stmt->user;

	rel = FUNC22(UserMappingRelationId, RowExclusiveLock);

	if (role->roletype == ROLESPEC_PUBLIC)
		useId = ACL_ID_PUBLIC;
	else
		useId = FUNC15(stmt->user, false);

	/* Check that the server exists. */
	srv = FUNC3(stmt->servername, false);

	FUNC24(useId, srv->serverid, stmt->servername);

	/*
	 * Check that the user mapping is unique within server.
	 */
	umId = FUNC5(USERMAPPINGUSERSERVER, Anum_pg_user_mapping_oid,
						   FUNC8(useId),
						   FUNC8(srv->serverid));

	if (FUNC9(umId))
	{
		if (stmt->if_not_exists)
		{
			FUNC12(NOTICE,
					(FUNC13(ERRCODE_DUPLICATE_OBJECT),
					 FUNC14("user mapping for \"%s\" already exists for server \"%s\", skipping",
							FUNC7(useId),
							stmt->servername)));

			FUNC21(rel, RowExclusiveLock);
			return InvalidObjectAddress;
		}
		else
			FUNC12(ERROR,
					(FUNC13(ERRCODE_DUPLICATE_OBJECT),
					 FUNC14("user mapping for \"%s\" already exists for server \"%s\"",
							FUNC7(useId),
							stmt->servername)));
	}

	fdw = FUNC2(srv->fdwid);

	/*
	 * Insert tuple into pg_user_mapping.
	 */
	FUNC18(values, 0, sizeof(values));
	FUNC18(nulls, false, sizeof(nulls));

	umId = FUNC4(rel, UserMappingOidIndexId,
							  Anum_pg_user_mapping_oid);
	values[Anum_pg_user_mapping_oid - 1] = FUNC8(umId);
	values[Anum_pg_user_mapping_umuser - 1] = FUNC8(useId);
	values[Anum_pg_user_mapping_umserver - 1] = FUNC8(srv->serverid);

	/* Add user options */
	useoptions = FUNC23(UserMappingRelationId,
										 FUNC10(NULL),
										 stmt->options,
										 fdw->fdwvalidator);

	if (FUNC11(FUNC1(useoptions)))
		values[Anum_pg_user_mapping_umoptions - 1] = useoptions;
	else
		nulls[Anum_pg_user_mapping_umoptions - 1] = true;

	tuple = FUNC16(rel->rd_att, values, nulls);

	FUNC0(rel, tuple);

	FUNC17(tuple);

	/* Add dependency on the server */
	myself.classId = UserMappingRelationId;
	myself.objectId = umId;
	myself.objectSubId = 0;

	referenced.classId = ForeignServerRelationId;
	referenced.objectId = srv->serverid;
	referenced.objectSubId = 0;
	FUNC19(&myself, &referenced, DEPENDENCY_NORMAL);

	if (FUNC9(useId))
	{
		/* Record the mapped user dependency */
		FUNC20(UserMappingRelationId, umId, useId);
	}

	/*
	 * Perhaps someday there should be a recordDependencyOnCurrentExtension
	 * call here; but since roles aren't members of extensions, it seems like
	 * user mappings shouldn't be either.  Note that the grammar and pg_dump
	 * would need to be extended too if we change this.
	 */

	/* Post creation hook for new user mapping */
	FUNC6(UserMappingRelationId, umId, 0);

	FUNC21(rel, RowExclusiveLock);

	return myself;
}