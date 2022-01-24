#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_15__ {int /*<<< orphan*/ * ecxt_scantuple; } ;
struct TYPE_14__ {int /*<<< orphan*/  conname; int /*<<< orphan*/  oid; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relkind; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_constraint ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  TYPE_4__ ExprContext ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_constraint_conbin ; 
 int /*<<< orphan*/  CONSTROID ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_CHECK_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_FOREIGN_TABLE ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC26(Relation rel, HeapTuple constrtup)
{
	EState	   *estate;
	Datum		val;
	char	   *conbin;
	Expr	   *origexpr;
	ExprState  *exprstate;
	TableScanDesc scan;
	ExprContext *econtext;
	MemoryContext oldcxt;
	TupleTableSlot *slot;
	Form_pg_constraint constrForm;
	bool		isnull;
	Snapshot	snapshot;

	/*
	 * VALIDATE CONSTRAINT is a no-op for foreign tables and partitioned
	 * tables.
	 */
	if (rel->rd_rel->relkind == RELKIND_FOREIGN_TABLE ||
		rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
		return;

	constrForm = (Form_pg_constraint) FUNC5(constrtup);

	estate = FUNC0();

	/*
	 * XXX this tuple doesn't really come from a syscache, but this doesn't
	 * matter to SysCacheGetAttr, because it only wants to be able to fetch
	 * the tupdesc
	 */
	val = FUNC13(CONSTROID, constrtup, Anum_pg_constraint_conbin,
						  &isnull);
	if (isnull)
		FUNC16(ERROR, "null conbin for constraint %u",
			 constrForm->oid);
	conbin = FUNC14(val);
	origexpr = (Expr *) FUNC21(conbin);
	exprstate = FUNC3(origexpr, estate);

	econtext = FUNC7(estate);
	slot = FUNC25(rel, NULL);
	econtext->ecxt_scantuple = slot;

	snapshot = FUNC11(FUNC6());
	scan = FUNC22(rel, snapshot, 0, NULL);

	/*
	 * Switch to per-tuple memory context and reset it for each tuple
	 * produced, so we don't leak memory.
	 */
	oldcxt = FUNC9(FUNC8(estate));

	while (FUNC24(scan, ForwardScanDirection, slot))
	{
		if (!FUNC1(exprstate, econtext))
			FUNC17(ERROR,
					(FUNC18(ERRCODE_CHECK_VIOLATION),
					 FUNC19("check constraint \"%s\" is violated by some row",
							FUNC10(constrForm->conname)),
					 FUNC20(rel, FUNC10(constrForm->conname))));

		FUNC12(econtext);
	}

	FUNC9(oldcxt);
	FUNC23(scan);
	FUNC15(snapshot);
	FUNC2(slot);
	FUNC4(estate);
}