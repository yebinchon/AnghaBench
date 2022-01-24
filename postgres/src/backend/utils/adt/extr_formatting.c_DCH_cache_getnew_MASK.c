#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int valid; scalar_t__ age; int std; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ DCHCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__** DCHCache ; 
 void* DCHCounter ; 
 int DCH_CACHE_ENTRIES ; 
 scalar_t__ DCH_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEBUG_elog_output ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int n_DCHCache ; 

__attribute__((used)) static DCHCacheEntry *
FUNC5(const char *str, bool std)
{
	DCHCacheEntry *ent;

	/* Ensure we can advance DCHCounter below */
	FUNC1();

	/*
	 * If cache is full, remove oldest entry (or recycle first not-valid one)
	 */
	if (n_DCHCache >= DCH_CACHE_ENTRIES)
	{
		DCHCacheEntry *old = DCHCache[0];

#ifdef DEBUG_TO_FROM_CHAR
		elog(DEBUG_elog_output, "cache is full (%d)", n_DCHCache);
#endif
		if (old->valid)
		{
			for (int i = 1; i < DCH_CACHE_ENTRIES; i++)
			{
				ent = DCHCache[i];
				if (!ent->valid)
				{
					old = ent;
					break;
				}
				if (ent->age < old->age)
					old = ent;
			}
		}
#ifdef DEBUG_TO_FROM_CHAR
		elog(DEBUG_elog_output, "OLD: '%s' AGE: %d", old->str, old->age);
#endif
		old->valid = false;
		FUNC3(old->str, str, DCH_CACHE_SIZE + 1);
		old->age = (++DCHCounter);
		/* caller is expected to fill format, then set valid */
		return old;
	}
	else
	{
#ifdef DEBUG_TO_FROM_CHAR
		elog(DEBUG_elog_output, "NEW (%d)", n_DCHCache);
#endif
		FUNC0(DCHCache[n_DCHCache] == NULL);
		DCHCache[n_DCHCache] = ent = (DCHCacheEntry *)
			FUNC2(TopMemoryContext, sizeof(DCHCacheEntry));
		ent->valid = false;
		FUNC3(ent->str, str, DCH_CACHE_SIZE + 1);
		ent->std = std;
		ent->age = (++DCHCounter);
		/* caller is expected to fill format, then set valid */
		++n_DCHCache;
		return ent;
	}
}