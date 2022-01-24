#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_8__ {int /*<<< orphan*/  tg_event; TYPE_5__* tg_relation; TYPE_1__* tg_trigger; int /*<<< orphan*/  tg_newtuple; int /*<<< orphan*/  tg_trigtuple; } ;
typedef  TYPE_2__ TriggerData ;
struct TYPE_10__ {int /*<<< orphan*/  rd_id; int /*<<< orphan*/  rd_att; } ;
struct TYPE_9__ {scalar_t__ context; } ;
struct TYPE_7__ {char* tgname; int tgnargs; char** tgargs; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  HV ;
typedef  TYPE_3__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  AV ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_5__*) ; 
 char* FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/ * FUNC20 () ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int) ; 
 int /*<<< orphan*/  oidout ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static SV  *
FUNC24(FunctionCallInfo fcinfo)
{
	dTHX;
	TriggerData *tdata;
	TupleDesc	tupdesc;
	int			i;
	char	   *level;
	char	   *event;
	char	   *relid;
	char	   *when;
	HV		   *hv;

	hv = FUNC20();
	FUNC17(hv, 12);			/* pre-grow the hash */

	tdata = (TriggerData *) fcinfo->context;
	tupdesc = tdata->tg_relation->rd_att;

	relid = FUNC0(
							FUNC1(oidout,
												FUNC2(tdata->tg_relation->rd_id)
												)
		);

	FUNC18(hv, "name", FUNC16(tdata->tg_trigger->tgname));
	FUNC18(hv, "relid", FUNC16(relid));

	/*
	 * Note: In BEFORE trigger, stored generated columns are not computed yet,
	 * so don't make them accessible in NEW row.
	 */

	if (FUNC8(tdata->tg_event))
	{
		event = "INSERT";
		if (FUNC11(tdata->tg_event))
			FUNC18(hv, "new",
							FUNC23(tdata->tg_trigtuple,
												   tupdesc,
												   !FUNC6(tdata->tg_event)));
	}
	else if (FUNC7(tdata->tg_event))
	{
		event = "DELETE";
		if (FUNC11(tdata->tg_event))
			FUNC18(hv, "old",
							FUNC23(tdata->tg_trigtuple,
												   tupdesc,
												   true));
	}
	else if (FUNC10(tdata->tg_event))
	{
		event = "UPDATE";
		if (FUNC11(tdata->tg_event))
		{
			FUNC18(hv, "old",
							FUNC23(tdata->tg_trigtuple,
												   tupdesc,
												   true));
			FUNC18(hv, "new",
							FUNC23(tdata->tg_newtuple,
												   tupdesc,
												   !FUNC6(tdata->tg_event)));
		}
	}
	else if (FUNC9(tdata->tg_event))
		event = "TRUNCATE";
	else
		event = "UNKNOWN";

	FUNC18(hv, "event", FUNC16(event));
	FUNC18(hv, "argc", FUNC22(tdata->tg_trigger->tgnargs));

	if (tdata->tg_trigger->tgnargs > 0)
	{
		AV		   *av = FUNC19();

		FUNC14(av, tdata->tg_trigger->tgnargs);
		for (i = 0; i < tdata->tg_trigger->tgnargs; i++)
			FUNC15(av, FUNC16(tdata->tg_trigger->tgargs[i]));
		FUNC18(hv, "args", FUNC21((SV *) av));
	}

	FUNC18(hv, "relname",
					FUNC16(FUNC4(tdata->tg_relation)));

	FUNC18(hv, "table_name",
					FUNC16(FUNC4(tdata->tg_relation)));

	FUNC18(hv, "table_schema",
					FUNC16(FUNC3(tdata->tg_relation)));

	if (FUNC6(tdata->tg_event))
		when = "BEFORE";
	else if (FUNC5(tdata->tg_event))
		when = "AFTER";
	else if (FUNC13(tdata->tg_event))
		when = "INSTEAD OF";
	else
		when = "UNKNOWN";
	FUNC18(hv, "when", FUNC16(when));

	if (FUNC11(tdata->tg_event))
		level = "ROW";
	else if (FUNC12(tdata->tg_event))
		level = "STATEMENT";
	else
		level = "UNKNOWN";
	FUNC18(hv, "level", FUNC16(level));

	return FUNC21((SV *) hv);
}