#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_val ;
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_21__ {int /*<<< orphan*/  options; int /*<<< orphan*/  func_options; int /*<<< orphan*/  fdwname; } ;
struct TYPE_20__ {void* fdwvalidator; void* oid; } ;
struct TYPE_19__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_18__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_foreign_data_wrapper ;
typedef  int Datum ;
typedef  TYPE_4__ AlterFdwStmt ;

/* Variables and functions */
 int Anum_pg_foreign_data_wrapper_fdwhandler ; 
 int Anum_pg_foreign_data_wrapper_fdwoptions ; 
 int Anum_pg_foreign_data_wrapper_fdwvalidator ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FOREIGNDATAWRAPPERNAME ; 
 int /*<<< orphan*/  FOREIGNDATAWRAPPEROID ; 
 int /*<<< orphan*/  ForeignDataWrapperRelationId ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int Natts_pg_foreign_data_wrapper ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__,int /*<<< orphan*/ ,void*) ; 
 int FUNC7 (void*) ; 
 scalar_t__ FUNC8 (void*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 void* ProcedureRelationId ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 TYPE_2__* FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC21 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int*,void**,int*,void**) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 

ObjectAddress
FUNC28(AlterFdwStmt *stmt)
{
	Relation	rel;
	HeapTuple	tp;
	Form_pg_foreign_data_wrapper fdwForm;
	Datum		repl_val[Natts_pg_foreign_data_wrapper];
	bool		repl_null[Natts_pg_foreign_data_wrapper];
	bool		repl_repl[Natts_pg_foreign_data_wrapper];
	Oid			fdwId;
	bool		isnull;
	Datum		datum;
	bool		handler_given;
	bool		validator_given;
	Oid			fdwhandler;
	Oid			fdwvalidator;
	ObjectAddress myself;

	rel = FUNC26(ForeignDataWrapperRelationId, RowExclusiveLock);

	/* Must be super user */
	if (!FUNC24())
		FUNC15(ERROR,
				(FUNC16(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC18("permission denied to alter foreign-data wrapper \"%s\"",
						stmt->fdwname),
				 FUNC17("Must be superuser to alter a foreign-data wrapper.")));

	tp = FUNC12(FOREIGNDATAWRAPPERNAME,
							 FUNC0(stmt->fdwname));

	if (!FUNC4(tp))
		FUNC15(ERROR,
				(FUNC16(ERRCODE_UNDEFINED_OBJECT),
				 FUNC18("foreign-data wrapper \"%s\" does not exist", stmt->fdwname)));

	fdwForm = (Form_pg_foreign_data_wrapper) FUNC3(tp);
	fdwId = fdwForm->oid;

	FUNC21(repl_val, 0, sizeof(repl_val));
	FUNC21(repl_null, false, sizeof(repl_null));
	FUNC21(repl_repl, false, sizeof(repl_repl));

	FUNC22(stmt->func_options,
					   &handler_given, &fdwhandler,
					   &validator_given, &fdwvalidator);

	if (handler_given)
	{
		repl_val[Anum_pg_foreign_data_wrapper_fdwhandler - 1] = FUNC7(fdwhandler);
		repl_repl[Anum_pg_foreign_data_wrapper_fdwhandler - 1] = true;

		/*
		 * It could be that the behavior of accessing foreign table changes
		 * with the new handler.  Warn about this.
		 */
		FUNC15(WARNING,
				(FUNC18("changing the foreign-data wrapper handler can change behavior of existing foreign tables")));
	}

	if (validator_given)
	{
		repl_val[Anum_pg_foreign_data_wrapper_fdwvalidator - 1] = FUNC7(fdwvalidator);
		repl_repl[Anum_pg_foreign_data_wrapper_fdwvalidator - 1] = true;

		/*
		 * It could be that existing options for the FDW or dependent SERVER,
		 * USER MAPPING or FOREIGN TABLE objects are no longer valid according
		 * to the new validator.  Warn about this.
		 */
		if (FUNC8(fdwvalidator))
			FUNC15(WARNING,
					(FUNC18("changing the foreign-data wrapper validator can cause "
							"the options for dependent objects to become invalid")));
	}
	else
	{
		/*
		 * Validator is not changed, but we need it for validating options.
		 */
		fdwvalidator = fdwForm->fdwvalidator;
	}

	/*
	 * If options specified, validate and update.
	 */
	if (stmt->options)
	{
		/* Extract the current options */
		datum = FUNC13(FOREIGNDATAWRAPPEROID,
								tp,
								Anum_pg_foreign_data_wrapper_fdwoptions,
								&isnull);
		if (isnull)
			datum = FUNC9(NULL);

		/* Transform the options */
		datum = FUNC27(ForeignDataWrapperRelationId,
										datum,
										stmt->options,
										fdwvalidator);

		if (FUNC10(FUNC2(datum)))
			repl_val[Anum_pg_foreign_data_wrapper_fdwoptions - 1] = datum;
		else
			repl_null[Anum_pg_foreign_data_wrapper_fdwoptions - 1] = true;

		repl_repl[Anum_pg_foreign_data_wrapper_fdwoptions - 1] = true;
	}

	/* Everything looks good - update the tuple */
	tp = FUNC20(tp, FUNC11(rel),
						   repl_val, repl_null, repl_repl);

	FUNC1(rel, &tp->t_self, tp);

	FUNC19(tp);

	FUNC6(myself, ForeignDataWrapperRelationId, fdwId);

	/* Update function dependencies if we changed them */
	if (handler_given || validator_given)
	{
		ObjectAddress referenced;

		/*
		 * Flush all existing dependency records of this FDW on functions; we
		 * assume there can be none other than the ones we are fixing.
		 */
		FUNC14(ForeignDataWrapperRelationId,
										fdwId,
										ProcedureRelationId,
										DEPENDENCY_NORMAL);

		/* And build new ones. */

		if (FUNC8(fdwhandler))
		{
			referenced.classId = ProcedureRelationId;
			referenced.objectId = fdwhandler;
			referenced.objectSubId = 0;
			FUNC23(&myself, &referenced, DEPENDENCY_NORMAL);
		}

		if (FUNC8(fdwvalidator))
		{
			referenced.classId = ProcedureRelationId;
			referenced.objectId = fdwvalidator;
			referenced.objectSubId = 0;
			FUNC23(&myself, &referenced, DEPENDENCY_NORMAL);
		}
	}

	FUNC5(ForeignDataWrapperRelationId, fdwId, 0);

	FUNC25(rel, RowExclusiveLock);

	return myself;
}