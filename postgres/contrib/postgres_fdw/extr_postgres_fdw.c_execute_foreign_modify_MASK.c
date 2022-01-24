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
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_8__ {int /*<<< orphan*/  temp_cxt; scalar_t__ has_returning; int /*<<< orphan*/  query; int /*<<< orphan*/  conn; int /*<<< orphan*/  p_nums; int /*<<< orphan*/  p_name; int /*<<< orphan*/  ctidAttno; } ;
struct TYPE_7__ {scalar_t__ ri_FdwState; } ;
typedef  TYPE_1__ ResultRelInfo ;
typedef  TYPE_2__ PgFdwModifyState ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ CmdType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CMD_DELETE ; 
 scalar_t__ CMD_INSERT ; 
 scalar_t__ CMD_UPDATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 char** FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static TupleTableSlot *
FUNC16(EState *estate,
					   ResultRelInfo *resultRelInfo,
					   CmdType operation,
					   TupleTableSlot *slot,
					   TupleTableSlot *planSlot)
{
	PgFdwModifyState *fmstate = (PgFdwModifyState *) resultRelInfo->ri_FdwState;
	ItemPointer ctid = NULL;
	const char **p_values;
	PGresult   *res;
	int			n_rows;

	/* The operation should be INSERT, UPDATE, or DELETE */
	FUNC0(operation == CMD_INSERT ||
		   operation == CMD_UPDATE ||
		   operation == CMD_DELETE);

	/* Set up the prepared statement on the remote server, if we didn't yet */
	if (!fmstate->p_name)
		FUNC14(fmstate);

	/*
	 * For UPDATE/DELETE, get the ctid that was passed up as a resjunk column
	 */
	if (operation == CMD_UPDATE || operation == CMD_DELETE)
	{
		Datum		datum;
		bool		isNull;

		datum = FUNC2(planSlot,
									 fmstate->ctidAttno,
									 &isNull);
		/* shouldn't ever get a null result... */
		if (isNull)
			FUNC11(ERROR, "ctid is NULL");
		ctid = (ItemPointer) FUNC1(datum);
	}

	/* Convert parameters needed by prepared statement to text form */
	p_values = FUNC10(fmstate, ctid, slot);

	/*
	 * Execute the prepared statement.
	 */
	if (!FUNC8(fmstate->conn,
							 fmstate->p_name,
							 fmstate->p_nums,
							 p_values,
							 NULL,
							 NULL,
							 0))
		FUNC13(ERROR, NULL, fmstate->conn, false, fmstate->query);

	/*
	 * Get the result, and check for success.
	 *
	 * We don't use a PG_TRY block here, so be careful not to throw error
	 * without releasing the PGresult.
	 */
	res = FUNC12(fmstate->conn, fmstate->query);
	if (FUNC7(res) !=
		(fmstate->has_returning ? PGRES_TUPLES_OK : PGRES_COMMAND_OK))
		FUNC13(ERROR, res, fmstate->conn, true, fmstate->query);

	/* Check number of rows affected, and fetch RETURNING tuple if any */
	if (fmstate->has_returning)
	{
		n_rows = FUNC6(res);
		if (n_rows > 0)
			FUNC15(fmstate, slot, res);
	}
	else
		n_rows = FUNC9(FUNC5(res));

	/* And clean up */
	FUNC4(res);

	FUNC3(fmstate->temp_cxt);

	/*
	 * Return NULL if nothing was inserted/updated/deleted on the remote end
	 */
	return (n_rows > 0) ? slot : NULL;
}