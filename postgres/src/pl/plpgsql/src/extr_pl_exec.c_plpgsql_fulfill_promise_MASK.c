#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_3__* evtrigdata; TYPE_2__* trigdata; int /*<<< orphan*/  datum_context; } ;
struct TYPE_18__ {int promise; } ;
struct TYPE_17__ {char* event; char* tag; } ;
struct TYPE_16__ {TYPE_1__* tg_trigger; TYPE_12__* tg_relation; int /*<<< orphan*/  tg_event; } ;
struct TYPE_15__ {int tgnargs; int /*<<< orphan*/ * tgargs; int /*<<< orphan*/  tgname; } ;
struct TYPE_14__ {int /*<<< orphan*/  rd_id; } ;
typedef  TYPE_4__ PLpgSQL_var ;
typedef  TYPE_5__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int PLPGSQL_PROMISE_NONE ; 
#define  PLPGSQL_PROMISE_TG_ARGV 138 
#define  PLPGSQL_PROMISE_TG_EVENT 137 
#define  PLPGSQL_PROMISE_TG_LEVEL 136 
#define  PLPGSQL_PROMISE_TG_NAME 135 
#define  PLPGSQL_PROMISE_TG_NARGS 134 
#define  PLPGSQL_PROMISE_TG_OP 133 
#define  PLPGSQL_PROMISE_TG_RELID 132 
#define  PLPGSQL_PROMISE_TG_TABLE_NAME 131 
#define  PLPGSQL_PROMISE_TG_TABLE_SCHEMA 130 
#define  PLPGSQL_PROMISE_TG_TAG 129 
#define  PLPGSQL_PROMISE_TG_WHEN 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_12__*) ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ ,int,int,char) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namein ; 
 int /*<<< orphan*/ * FUNC23 (int) ; 

__attribute__((used)) static void
FUNC24(PLpgSQL_execstate *estate,
						PLpgSQL_var *var)
{
	MemoryContext oldcontext;

	if (var->promise == PLPGSQL_PROMISE_NONE)
		return;					/* nothing to do */

	/*
	 * This will typically be invoked in a short-lived context such as the
	 * mcontext.  We must create variable values in the estate's datum
	 * context.  This quick-and-dirty solution risks leaking some additional
	 * cruft there, but since any one promise is honored at most once per
	 * function call, it's probably not worth being more careful.
	 */
	oldcontext = FUNC4(estate->datum_context);

	switch (var->promise)
	{
		case PLPGSQL_PROMISE_TG_NAME:
			if (estate->trigdata == NULL)
				FUNC21(ERROR, "trigger promise is not in a trigger function");
			FUNC18(estate, var,
							  FUNC2(namein,
												  FUNC0(estate->trigdata->tg_trigger->tgname)),
							  false, true);
			break;

		case PLPGSQL_PROMISE_TG_WHEN:
			if (estate->trigdata == NULL)
				FUNC21(ERROR, "trigger promise is not in a trigger function");
			if (FUNC10(estate->trigdata->tg_event))
				FUNC19(estate, var, "BEFORE");
			else if (FUNC9(estate->trigdata->tg_event))
				FUNC19(estate, var, "AFTER");
			else if (FUNC17(estate->trigdata->tg_event))
				FUNC19(estate, var, "INSTEAD OF");
			else
				FUNC21(ERROR, "unrecognized trigger execution time: not BEFORE, AFTER, or INSTEAD OF");
			break;

		case PLPGSQL_PROMISE_TG_LEVEL:
			if (estate->trigdata == NULL)
				FUNC21(ERROR, "trigger promise is not in a trigger function");
			if (FUNC15(estate->trigdata->tg_event))
				FUNC19(estate, var, "ROW");
			else if (FUNC16(estate->trigdata->tg_event))
				FUNC19(estate, var, "STATEMENT");
			else
				FUNC21(ERROR, "unrecognized trigger event type: not ROW or STATEMENT");
			break;

		case PLPGSQL_PROMISE_TG_OP:
			if (estate->trigdata == NULL)
				FUNC21(ERROR, "trigger promise is not in a trigger function");
			if (FUNC12(estate->trigdata->tg_event))
				FUNC19(estate, var, "INSERT");
			else if (FUNC14(estate->trigdata->tg_event))
				FUNC19(estate, var, "UPDATE");
			else if (FUNC11(estate->trigdata->tg_event))
				FUNC19(estate, var, "DELETE");
			else if (FUNC13(estate->trigdata->tg_event))
				FUNC19(estate, var, "TRUNCATE");
			else
				FUNC21(ERROR, "unrecognized trigger action: not INSERT, DELETE, UPDATE, or TRUNCATE");
			break;

		case PLPGSQL_PROMISE_TG_RELID:
			if (estate->trigdata == NULL)
				FUNC21(ERROR, "trigger promise is not in a trigger function");
			FUNC18(estate, var,
							  FUNC5(estate->trigdata->tg_relation->rd_id),
							  false, false);
			break;

		case PLPGSQL_PROMISE_TG_TABLE_NAME:
			if (estate->trigdata == NULL)
				FUNC21(ERROR, "trigger promise is not in a trigger function");
			FUNC18(estate, var,
							  FUNC2(namein,
												  FUNC0(FUNC8(estate->trigdata->tg_relation))),
							  false, true);
			break;

		case PLPGSQL_PROMISE_TG_TABLE_SCHEMA:
			if (estate->trigdata == NULL)
				FUNC21(ERROR, "trigger promise is not in a trigger function");
			FUNC18(estate, var,
							  FUNC2(namein,
												  FUNC0(FUNC22(FUNC7(estate->trigdata->tg_relation)))),
							  false, true);
			break;

		case PLPGSQL_PROMISE_TG_NARGS:
			if (estate->trigdata == NULL)
				FUNC21(ERROR, "trigger promise is not in a trigger function");
			FUNC18(estate, var,
							  FUNC3(estate->trigdata->tg_trigger->tgnargs),
							  false, false);
			break;

		case PLPGSQL_PROMISE_TG_ARGV:
			if (estate->trigdata == NULL)
				FUNC21(ERROR, "trigger promise is not in a trigger function");
			if (estate->trigdata->tg_trigger->tgnargs > 0)
			{
				/*
				 * For historical reasons, tg_argv[] subscripts start at zero
				 * not one.  So we can't use construct_array().
				 */
				int			nelems = estate->trigdata->tg_trigger->tgnargs;
				Datum	   *elems;
				int			dims[1];
				int			lbs[1];
				int			i;

				elems = FUNC23(sizeof(Datum) * nelems);
				for (i = 0; i < nelems; i++)
					elems[i] = FUNC1(estate->trigdata->tg_trigger->tgargs[i]);
				dims[0] = nelems;
				lbs[0] = 0;

				FUNC18(estate, var,
								  FUNC6(FUNC20(elems, NULL,
																	 1, dims, lbs,
																	 TEXTOID,
																	 -1, false, 'i')),
								  false, true);
			}
			else
			{
				FUNC18(estate, var, (Datum) 0, true, false);
			}
			break;

		case PLPGSQL_PROMISE_TG_EVENT:
			if (estate->evtrigdata == NULL)
				FUNC21(ERROR, "event trigger promise is not in an event trigger function");
			FUNC19(estate, var, estate->evtrigdata->event);
			break;

		case PLPGSQL_PROMISE_TG_TAG:
			if (estate->evtrigdata == NULL)
				FUNC21(ERROR, "event trigger promise is not in an event trigger function");
			FUNC19(estate, var, estate->evtrigdata->tag);
			break;

		default:
			FUNC21(ERROR, "unrecognized promise type: %d", var->promise);
	}

	FUNC4(oldcontext);
}