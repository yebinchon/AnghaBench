#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int tg_event; TYPE_1__* tg_trigger; int /*<<< orphan*/ * tg_newtable; int /*<<< orphan*/ * tg_oldtable; } ;
typedef  TYPE_3__ TriggerData ;
struct TYPE_18__ {TYPE_2__* flinfo; scalar_t__ isnull; } ;
struct TYPE_17__ {scalar_t__ fn_oid; } ;
struct TYPE_15__ {int /*<<< orphan*/  fn_oid; } ;
struct TYPE_14__ {scalar_t__ tgfoid; } ;
typedef  int /*<<< orphan*/  PgStat_FunctionCallUsage ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Instrumentation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_4__ FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int AFTER_TRIGGER_DEFERRABLE ; 
 int AFTER_TRIGGER_INITDEFERRED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__,TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyTriggerDepth ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 TYPE_5__* fcinfo ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HeapTuple
FUNC21(TriggerData *trigdata,
					int tgindx,
					FmgrInfo *finfo,
					Instrumentation *instr,
					MemoryContext per_tuple_context)
{
	FUNC6(fcinfo, 0);
	PgStat_FunctionCallUsage fcusage;
	Datum		result;
	MemoryContext oldContext;

	/*
	 * Protect against code paths that may fail to initialize transition table
	 * info.
	 */
	FUNC0(((FUNC13(trigdata->tg_event) ||
			 FUNC14(trigdata->tg_event) ||
			 FUNC12(trigdata->tg_event)) &&
			FUNC11(trigdata->tg_event) &&
			!(trigdata->tg_event & AFTER_TRIGGER_DEFERRABLE) &&
			!(trigdata->tg_event & AFTER_TRIGGER_INITDEFERRED)) ||
		   (trigdata->tg_oldtable == NULL && trigdata->tg_newtable == NULL));

	finfo += tgindx;

	/*
	 * We cache fmgr lookup info, to avoid making the lookup again on each
	 * call.
	 */
	if (finfo->fn_oid == InvalidOid)
		FUNC18(trigdata->tg_trigger->tgfoid, finfo);

	FUNC0(finfo->fn_oid == trigdata->tg_trigger->tgfoid);

	/*
	 * If doing EXPLAIN ANALYZE, start charging time to this trigger.
	 */
	if (instr)
		FUNC4(instr + tgindx);

	/*
	 * Do the function evaluation in the per-tuple memory context, so that
	 * leaked memory will be reclaimed once per tuple. Note in particular that
	 * any new tuple created by the trigger function will live till the end of
	 * the tuple cycle.
	 */
	oldContext = FUNC7(per_tuple_context);

	/*
	 * Call the function, passing no arguments but setting a context.
	 */
	FUNC3(*fcinfo, finfo, 0,
							 InvalidOid, (Node *) trigdata, NULL);

	FUNC20(fcinfo, &fcusage);

	MyTriggerDepth++;
	FUNC10();
	{
		result = FUNC2(fcinfo);
	}
	FUNC9();
	{
		MyTriggerDepth--;
	}
	FUNC8();

	FUNC19(&fcusage, true);

	FUNC7(oldContext);

	/*
	 * Trigger protocol allows function to return a null pointer, but NOT to
	 * set the isnull result flag.
	 */
	if (fcinfo->isnull)
		FUNC15(ERROR,
				(FUNC16(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
				 FUNC17("trigger function %u returned null value",
						fcinfo->flinfo->fn_oid)));

	/*
	 * If doing EXPLAIN ANALYZE, stop charging time to this trigger, and count
	 * one "tuple returned" (really the number of firings).
	 */
	if (instr)
		FUNC5(instr + tgindx, 1);

	return (HeapTuple) FUNC1(result);
}