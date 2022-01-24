#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int natts; int /*<<< orphan*/  attkeys; int /*<<< orphan*/  replident; int /*<<< orphan*/ * atttyps; void** attnames; void* relname; void* nspname; scalar_t__ remoteid; } ;
struct TYPE_10__ {TYPE_1__ remoterel; } ;
struct TYPE_9__ {int natts; int /*<<< orphan*/  attkeys; int /*<<< orphan*/  replident; int /*<<< orphan*/ * atttyps; int /*<<< orphan*/ * attnames; int /*<<< orphan*/  relname; int /*<<< orphan*/  nspname; scalar_t__ remoteid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ LogicalRepRelation ;
typedef  TYPE_3__ LogicalRepRelMapEntry ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/ * LogicalRepRelMap ; 
 int /*<<< orphan*/  LogicalRepRelMapContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(LogicalRepRelation *remoterel)
{
	MemoryContext oldctx;
	LogicalRepRelMapEntry *entry;
	bool		found;
	int			i;

	if (LogicalRepRelMap == NULL)
		FUNC4();

	/*
	 * HASH_ENTER returns the existing entry if present or creates a new one.
	 */
	entry = FUNC2(LogicalRepRelMap, (void *) &remoterel->remoteid,
						HASH_ENTER, &found);

	if (found)
		FUNC3(entry);

	FUNC5(entry, 0, sizeof(LogicalRepRelMapEntry));

	/* Make cached copy of the data */
	oldctx = FUNC0(LogicalRepRelMapContext);
	entry->remoterel.remoteid = remoterel->remoteid;
	entry->remoterel.nspname = FUNC7(remoterel->nspname);
	entry->remoterel.relname = FUNC7(remoterel->relname);
	entry->remoterel.natts = remoterel->natts;
	entry->remoterel.attnames = FUNC6(remoterel->natts * sizeof(char *));
	entry->remoterel.atttyps = FUNC6(remoterel->natts * sizeof(Oid));
	for (i = 0; i < remoterel->natts; i++)
	{
		entry->remoterel.attnames[i] = FUNC7(remoterel->attnames[i]);
		entry->remoterel.atttyps[i] = remoterel->atttyps[i];
	}
	entry->remoterel.replident = remoterel->replident;
	entry->remoterel.attkeys = FUNC1(remoterel->attkeys);
	FUNC0(oldctx);
}