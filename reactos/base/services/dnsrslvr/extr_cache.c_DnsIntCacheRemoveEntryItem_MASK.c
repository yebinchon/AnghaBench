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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_5__ {int /*<<< orphan*/  Record; int /*<<< orphan*/  CacheLink; } ;
typedef  TYPE_1__* PRESOLVER_CACHE_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  DnsFreeRecordList ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

VOID
FUNC5(PRESOLVER_CACHE_ENTRY CacheEntry)
{
    FUNC0("DnsIntCacheRemoveEntryItem %p\n", CacheEntry);

    /* Remove the entry from the list */
    FUNC4(&CacheEntry->CacheLink);
 
    /* Free record */
    FUNC1(CacheEntry->Record, DnsFreeRecordList);

    /* Delete us */
    FUNC3(FUNC2(), 0, CacheEntry);
}