#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_val ;
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_20__ {scalar_t__ options; int /*<<< orphan*/  servername; scalar_t__ user; } ;
struct TYPE_19__ {int /*<<< orphan*/  fdwvalidator; } ;
struct TYPE_18__ {int /*<<< orphan*/  fdwid; int /*<<< orphan*/  serverid; } ;
struct TYPE_17__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_16__ {scalar_t__ roletype; } ;
typedef  TYPE_1__ RoleSpec ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__ ForeignServer ;
typedef  TYPE_4__ ForeignDataWrapper ;
typedef  int Datum ;
typedef  TYPE_5__ AlterUserMappingStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_ID_PUBLIC ; 
 int /*<<< orphan*/  Anum_pg_user_mapping_oid ; 
 int Anum_pg_user_mapping_umoptions ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int Natts_pg_user_mapping ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ ROLESPEC_PUBLIC ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  USERMAPPINGOID ; 
 int /*<<< orphan*/  USERMAPPINGUSERSERVER ; 
 int /*<<< orphan*/  UserMappingRelationId ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 TYPE_2__* FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC22 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC27(AlterUserMappingStmt *stmt)
{
	Relation	rel;
	HeapTuple	tp;
	Datum		repl_val[Natts_pg_user_mapping];
	bool		repl_null[Natts_pg_user_mapping];
	bool		repl_repl[Natts_pg_user_mapping];
	Oid			useId;
	Oid			umId;
	ForeignServer *srv;
	ObjectAddress address;
	RoleSpec   *role = (RoleSpec *) stmt->user;

	rel = FUNC24(UserMappingRelationId, RowExclusiveLock);

	if (role->roletype == ROLESPEC_PUBLIC)
		useId = ACL_ID_PUBLIC;
	else
		useId = FUNC19(stmt->user, false);

	srv = FUNC3(stmt->servername, false);

	umId = FUNC4(USERMAPPINGUSERSERVER, Anum_pg_user_mapping_oid,
						   FUNC8(useId),
						   FUNC8(srv->serverid));
	if (!FUNC9(umId))
		FUNC16(ERROR,
				(FUNC17(ERRCODE_UNDEFINED_OBJECT),
				 FUNC18("user mapping for \"%s\" does not exist for server \"%s\"",
						FUNC6(useId), stmt->servername)));

	FUNC26(useId, srv->serverid, stmt->servername);

	tp = FUNC13(USERMAPPINGOID, FUNC8(umId));

	if (!FUNC5(tp))
		FUNC15(ERROR, "cache lookup failed for user mapping %u", umId);

	FUNC22(repl_val, 0, sizeof(repl_val));
	FUNC22(repl_null, false, sizeof(repl_null));
	FUNC22(repl_repl, false, sizeof(repl_repl));

	if (stmt->options)
	{
		ForeignDataWrapper *fdw;
		Datum		datum;
		bool		isnull;

		/*
		 * Process the options.
		 */

		fdw = FUNC2(srv->fdwid);

		datum = FUNC14(USERMAPPINGUSERSERVER,
								tp,
								Anum_pg_user_mapping_umoptions,
								&isnull);
		if (isnull)
			datum = FUNC10(NULL);

		/* Prepare the options array */
		datum = FUNC25(UserMappingRelationId,
										datum,
										stmt->options,
										fdw->fdwvalidator);

		if (FUNC11(FUNC1(datum)))
			repl_val[Anum_pg_user_mapping_umoptions - 1] = datum;
		else
			repl_null[Anum_pg_user_mapping_umoptions - 1] = true;

		repl_repl[Anum_pg_user_mapping_umoptions - 1] = true;
	}

	/* Everything looks good - update the tuple */
	tp = FUNC21(tp, FUNC12(rel),
						   repl_val, repl_null, repl_repl);

	FUNC0(rel, &tp->t_self, tp);

	FUNC7(address, UserMappingRelationId, umId);

	FUNC20(tp);

	FUNC23(rel, RowExclusiveLock);

	return address;
}