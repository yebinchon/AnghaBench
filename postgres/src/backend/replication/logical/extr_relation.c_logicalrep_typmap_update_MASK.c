#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* typname; void* nspname; scalar_t__ remoteid; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ LogicalRepTyp ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  LogicalRepRelMapContext ; 
 int /*<<< orphan*/ * LogicalRepTypMap ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (void*) ; 

void
FUNC5(LogicalRepTyp *remotetyp)
{
	MemoryContext oldctx;
	LogicalRepTyp *entry;
	bool		found;

	if (LogicalRepTypMap == NULL)
		FUNC2();

	/*
	 * HASH_ENTER returns the existing entry if present or creates a new one.
	 */
	entry = FUNC1(LogicalRepTypMap, (void *) &remotetyp->remoteid,
						HASH_ENTER, &found);

	if (found)
		FUNC3(entry);

	/* Make cached copy of the data */
	entry->remoteid = remotetyp->remoteid;
	oldctx = FUNC0(LogicalRepRelMapContext);
	entry->nspname = FUNC4(remotetyp->nspname);
	entry->typname = FUNC4(remotetyp->typname);
	FUNC0(oldctx);
}