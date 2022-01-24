#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_val ;
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_28__ {int /*<<< orphan*/  fdwvalidator; } ;
struct TYPE_27__ {int /*<<< orphan*/  fdwid; } ;
struct TYPE_26__ {int /*<<< orphan*/  ftserver; } ;
struct TYPE_25__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_24__ {int /*<<< orphan*/  rd_id; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_foreign_table ;
typedef  TYPE_4__ ForeignServer ;
typedef  TYPE_5__ ForeignDataWrapper ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_foreign_table_ftoptions ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FOREIGNTABLEREL ; 
 int /*<<< orphan*/  ForeignTableRelationId ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int Natts_pg_foreign_table ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 TYPE_2__* FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC20 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC24(Relation rel, List *options)
{
	Relation	ftrel;
	ForeignServer *server;
	ForeignDataWrapper *fdw;
	HeapTuple	tuple;
	bool		isnull;
	Datum		repl_val[Natts_pg_foreign_table];
	bool		repl_null[Natts_pg_foreign_table];
	bool		repl_repl[Natts_pg_foreign_table];
	Datum		datum;
	Form_pg_foreign_table tableform;

	if (options == NIL)
		return;

	ftrel = FUNC22(ForeignTableRelationId, RowExclusiveLock);

	tuple = FUNC13(FOREIGNTABLEREL, rel->rd_id);
	if (!FUNC6(tuple))
		FUNC15(ERROR,
				(FUNC16(ERRCODE_UNDEFINED_OBJECT),
				 FUNC17("foreign table \"%s\" does not exist",
						FUNC11(rel))));
	tableform = (Form_pg_foreign_table) FUNC3(tuple);
	server = FUNC5(tableform->ftserver);
	fdw = FUNC4(server->fdwid);

	FUNC20(repl_val, 0, sizeof(repl_val));
	FUNC20(repl_null, false, sizeof(repl_null));
	FUNC20(repl_repl, false, sizeof(repl_repl));

	/* Extract the current options */
	datum = FUNC14(FOREIGNTABLEREL,
							tuple,
							Anum_pg_foreign_table_ftoptions,
							&isnull);
	if (isnull)
		datum = FUNC8(NULL);

	/* Transform the options */
	datum = FUNC23(ForeignTableRelationId,
									datum,
									options,
									fdw->fdwvalidator);

	if (FUNC9(FUNC2(datum)))
		repl_val[Anum_pg_foreign_table_ftoptions - 1] = datum;
	else
		repl_null[Anum_pg_foreign_table_ftoptions - 1] = true;

	repl_repl[Anum_pg_foreign_table_ftoptions - 1] = true;

	/* Everything looks good - update the tuple */

	tuple = FUNC19(tuple, FUNC10(ftrel),
							  repl_val, repl_null, repl_repl);

	FUNC1(ftrel, &tuple->t_self, tuple);

	/*
	 * Invalidate relcache so that all sessions will refresh any cached plans
	 * that might depend on the old options.
	 */
	FUNC0(rel);

	FUNC7(ForeignTableRelationId,
							  FUNC12(rel), 0);

	FUNC21(ftrel, RowExclusiveLock);

	FUNC18(tuple);
}