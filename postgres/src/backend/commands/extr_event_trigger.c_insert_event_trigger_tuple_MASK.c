#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_11__ {scalar_t__ objectSubId; void* objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_10__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  void* Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_event_trigger_evtenabled ; 
 int Anum_pg_event_trigger_evtevent ; 
 int Anum_pg_event_trigger_evtfoid ; 
 int Anum_pg_event_trigger_evtname ; 
 int Anum_pg_event_trigger_evtowner ; 
 int Anum_pg_event_trigger_evttags ; 
 int Anum_pg_event_trigger_oid ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  EventTriggerOidIndexId ; 
 int /*<<< orphan*/  EventTriggerRelationId ; 
 void* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int Natts_pg_trigger ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  TRIGGER_FIRES_ON_ORIGIN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC16(const char *trigname, const char *eventname, Oid evtOwner,
						   Oid funcoid, List *taglist)
{
	Relation	tgrel;
	Oid			trigoid;
	HeapTuple	tuple;
	Datum		values[Natts_pg_trigger];
	bool		nulls[Natts_pg_trigger];
	NameData	evtnamedata,
				evteventdata;
	ObjectAddress myself,
				referenced;

	/* Open pg_event_trigger. */
	tgrel = FUNC15(EventTriggerRelationId, RowExclusiveLock);

	/* Build the new pg_trigger tuple. */
	trigoid = FUNC2(tgrel, EventTriggerOidIndexId,
								 Anum_pg_event_trigger_oid);
	values[Anum_pg_event_trigger_oid - 1] = FUNC5(trigoid);
	FUNC9(nulls, false, sizeof(nulls));
	FUNC10(&evtnamedata, trigname);
	values[Anum_pg_event_trigger_evtname - 1] = FUNC4(&evtnamedata);
	FUNC10(&evteventdata, eventname);
	values[Anum_pg_event_trigger_evtevent - 1] = FUNC4(&evteventdata);
	values[Anum_pg_event_trigger_evtowner - 1] = FUNC5(evtOwner);
	values[Anum_pg_event_trigger_evtfoid - 1] = FUNC5(funcoid);
	values[Anum_pg_event_trigger_evtenabled - 1] =
		FUNC1(TRIGGER_FIRES_ON_ORIGIN);
	if (taglist == NIL)
		nulls[Anum_pg_event_trigger_evttags - 1] = true;
	else
		values[Anum_pg_event_trigger_evttags - 1] =
			FUNC6(taglist);

	/* Insert heap tuple. */
	tuple = FUNC7(tgrel->rd_att, values, nulls);
	FUNC0(tgrel, tuple);
	FUNC8(tuple);

	/* Depend on owner. */
	FUNC13(EventTriggerRelationId, trigoid, evtOwner);

	/* Depend on event trigger function. */
	myself.classId = EventTriggerRelationId;
	myself.objectId = trigoid;
	myself.objectSubId = 0;
	referenced.classId = ProcedureRelationId;
	referenced.objectId = funcoid;
	referenced.objectSubId = 0;
	FUNC11(&myself, &referenced, DEPENDENCY_NORMAL);

	/* Depend on extension, if any. */
	FUNC12(&myself, false);

	/* Post creation hook for new event trigger */
	FUNC3(EventTriggerRelationId, trigoid, 0);

	/* Close pg_event_trigger. */
	FUNC14(tgrel, RowExclusiveLock);

	return trigoid;
}