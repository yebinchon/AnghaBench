#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  options; int /*<<< orphan*/  serverid; int /*<<< orphan*/  relid; } ;
struct TYPE_4__ {int /*<<< orphan*/  ftserver; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_foreign_table ;
typedef  TYPE_2__ ForeignTable ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_foreign_table_ftoptions ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FOREIGNTABLEREL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

ForeignTable *
FUNC9(Oid relid)
{
	Form_pg_foreign_table tableform;
	ForeignTable *ft;
	HeapTuple	tp;
	Datum		datum;
	bool		isnull;

	tp = FUNC4(FOREIGNTABLEREL, FUNC2(relid));
	if (!FUNC1(tp))
		FUNC6(ERROR, "cache lookup failed for foreign table %u", relid);
	tableform = (Form_pg_foreign_table) FUNC0(tp);

	ft = (ForeignTable *) FUNC7(sizeof(ForeignTable));
	ft->relid = relid;
	ft->serverid = tableform->ftserver;

	/* Extract the ftoptions */
	datum = FUNC5(FOREIGNTABLEREL,
							tp,
							Anum_pg_foreign_table_ftoptions,
							&isnull);
	if (isnull)
		ft->options = NIL;
	else
		ft->options = FUNC8(datum);

	FUNC3(tp);

	return ft;
}