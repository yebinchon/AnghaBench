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
struct TYPE_14__ {void* oid; void* tableoid; } ;
struct TYPE_18__ {int /*<<< orphan*/  dump; void* name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_17__ {int remoteVersion; } ;
struct TYPE_16__ {TYPE_5__ dobj; int /*<<< orphan*/  evtenabled; void* evtfname; void* evttags; void* evtowner; void* evtevent; void* evtname; } ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ EventTriggerInfo ;
typedef  TYPE_4__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  DO_EVENT_TRIGGER ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  username_subquery ; 

EventTriggerInfo *
FUNC13(Archive *fout, int *numEventTriggers)
{
	int			i;
	PQExpBuffer query;
	PGresult   *res;
	EventTriggerInfo *evtinfo;
	int			i_tableoid,
				i_oid,
				i_evtname,
				i_evtevent,
				i_evtowner,
				i_evttags,
				i_evtfname,
				i_evtenabled;
	int			ntups;

	/* Before 9.3, there are no event triggers */
	if (fout->remoteVersion < 90300)
	{
		*numEventTriggers = 0;
		return NULL;
	}

	query = FUNC8();

	FUNC6(query,
					  "SELECT e.tableoid, e.oid, evtname, evtenabled, "
					  "evtevent, (%s evtowner) AS evtowner, "
					  "array_to_string(array("
					  "select quote_literal(x) "
					  " from unnest(evttags) as t(x)), ', ') as evttags, "
					  "e.evtfoid::regproc as evtfname "
					  "FROM pg_event_trigger e "
					  "ORDER BY e.oid",
					  username_subquery);

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);

	*numEventTriggers = ntups;

	evtinfo = (EventTriggerInfo *) FUNC10(ntups * sizeof(EventTriggerInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_evtname = FUNC3(res, "evtname");
	i_evtevent = FUNC3(res, "evtevent");
	i_evtowner = FUNC3(res, "evtowner");
	i_evttags = FUNC3(res, "evttags");
	i_evtfname = FUNC3(res, "evtfname");
	i_evtenabled = FUNC3(res, "evtenabled");

	for (i = 0; i < ntups; i++)
	{
		evtinfo[i].dobj.objType = DO_EVENT_TRIGGER;
		evtinfo[i].dobj.catId.tableoid = FUNC7(FUNC4(res, i, i_tableoid));
		evtinfo[i].dobj.catId.oid = FUNC7(FUNC4(res, i, i_oid));
		FUNC0(&evtinfo[i].dobj);
		evtinfo[i].dobj.name = FUNC11(FUNC4(res, i, i_evtname));
		evtinfo[i].evtname = FUNC11(FUNC4(res, i, i_evtname));
		evtinfo[i].evtevent = FUNC11(FUNC4(res, i, i_evtevent));
		evtinfo[i].evtowner = FUNC11(FUNC4(res, i, i_evtowner));
		evtinfo[i].evttags = FUNC11(FUNC4(res, i, i_evttags));
		evtinfo[i].evtfname = FUNC11(FUNC4(res, i, i_evtfname));
		evtinfo[i].evtenabled = *(FUNC4(res, i, i_evtenabled));

		/* Decide whether we want to dump it */
		FUNC12(&(evtinfo[i].dobj), fout);

		/* Event Triggers do not currently have ACLs. */
		evtinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);

	FUNC9(query);

	return evtinfo;
}