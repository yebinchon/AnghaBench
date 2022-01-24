#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ localreloid; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ LogicalRepRelMapEntry ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/ * LogicalRepRelMap ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(Datum arg, Oid reloid)
{
	LogicalRepRelMapEntry *entry;

	/* Just to be sure. */
	if (LogicalRepRelMap == NULL)
		return;

	if (reloid != InvalidOid)
	{
		HASH_SEQ_STATUS status;

		FUNC0(&status, LogicalRepRelMap);

		/* TODO, use inverse lookup hashtable? */
		while ((entry = (LogicalRepRelMapEntry *) FUNC1(&status)) != NULL)
		{
			if (entry->localreloid == reloid)
			{
				entry->localreloid = InvalidOid;
				FUNC2(&status);
				break;
			}
		}
	}
	else
	{
		/* invalidate all cache entries */
		HASH_SEQ_STATUS status;

		FUNC0(&status, LogicalRepRelMap);

		while ((entry = (LogicalRepRelMapEntry *) FUNC1(&status)) != NULL)
			entry->localreloid = InvalidOid;
	}
}