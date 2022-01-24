#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_val ;
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_18__ {scalar_t__ options; scalar_t__ version; scalar_t__ has_version; int /*<<< orphan*/  servername; } ;
struct TYPE_17__ {int /*<<< orphan*/  fdwvalidator; } ;
struct TYPE_16__ {int /*<<< orphan*/  srvfdw; int /*<<< orphan*/  oid; } ;
struct TYPE_15__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_foreign_server ;
typedef  TYPE_3__ ForeignDataWrapper ;
typedef  int Datum ;
typedef  TYPE_4__ AlterForeignServerStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int Anum_pg_foreign_server_srvoptions ; 
 int Anum_pg_foreign_server_srvversion ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FOREIGNSERVERNAME ; 
 int /*<<< orphan*/  FOREIGNSERVEROID ; 
 int /*<<< orphan*/  ForeignServerRelationId ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int Natts_pg_foreign_server ; 
 int /*<<< orphan*/  OBJECT_FOREIGN_SERVER ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 TYPE_1__* FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC21 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC26(AlterForeignServerStmt *stmt)
{
	Relation	rel;
	HeapTuple	tp;
	Datum		repl_val[Natts_pg_foreign_server];
	bool		repl_null[Natts_pg_foreign_server];
	bool		repl_repl[Natts_pg_foreign_server];
	Oid			srvId;
	Form_pg_foreign_server srvForm;
	ObjectAddress address;

	rel = FUNC24(ForeignServerRelationId, RowExclusiveLock);

	tp = FUNC13(FOREIGNSERVERNAME,
							 FUNC0(stmt->servername));

	if (!FUNC7(tp))
		FUNC16(ERROR,
				(FUNC17(ERRCODE_UNDEFINED_OBJECT),
				 FUNC18("server \"%s\" does not exist", stmt->servername)));

	srvForm = (Form_pg_foreign_server) FUNC4(tp);
	srvId = srvForm->oid;

	/*
	 * Only owner or a superuser can ALTER a SERVER.
	 */
	if (!FUNC22(srvId, FUNC6()))
		FUNC15(ACLCHECK_NOT_OWNER, OBJECT_FOREIGN_SERVER,
					   stmt->servername);

	FUNC21(repl_val, 0, sizeof(repl_val));
	FUNC21(repl_null, false, sizeof(repl_null));
	FUNC21(repl_repl, false, sizeof(repl_repl));

	if (stmt->has_version)
	{
		/*
		 * Change the server VERSION string.
		 */
		if (stmt->version)
			repl_val[Anum_pg_foreign_server_srvversion - 1] =
				FUNC1(stmt->version);
		else
			repl_null[Anum_pg_foreign_server_srvversion - 1] = true;

		repl_repl[Anum_pg_foreign_server_srvversion - 1] = true;
	}

	if (stmt->options)
	{
		ForeignDataWrapper *fdw = FUNC5(srvForm->srvfdw);
		Datum		datum;
		bool		isnull;

		/* Extract the current srvoptions */
		datum = FUNC14(FOREIGNSERVEROID,
								tp,
								Anum_pg_foreign_server_srvoptions,
								&isnull);
		if (isnull)
			datum = FUNC10(NULL);

		/* Prepare the options array */
		datum = FUNC25(ForeignServerRelationId,
										datum,
										stmt->options,
										fdw->fdwvalidator);

		if (FUNC11(FUNC3(datum)))
			repl_val[Anum_pg_foreign_server_srvoptions - 1] = datum;
		else
			repl_null[Anum_pg_foreign_server_srvoptions - 1] = true;

		repl_repl[Anum_pg_foreign_server_srvoptions - 1] = true;
	}

	/* Everything looks good - update the tuple */
	tp = FUNC20(tp, FUNC12(rel),
						   repl_val, repl_null, repl_repl);

	FUNC2(rel, &tp->t_self, tp);

	FUNC8(ForeignServerRelationId, srvId, 0);

	FUNC9(address, ForeignServerRelationId, srvId);

	FUNC19(tp);

	FUNC23(rel, RowExclusiveLock);

	return address;
}