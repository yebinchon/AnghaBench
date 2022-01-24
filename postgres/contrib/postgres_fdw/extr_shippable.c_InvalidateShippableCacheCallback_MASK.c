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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ ShippableCacheEntry ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  ShippableCacheHash ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(Datum arg, int cacheid, uint32 hashvalue)
{
	HASH_SEQ_STATUS status;
	ShippableCacheEntry *entry;

	/*
	 * In principle we could flush only cache entries relating to the
	 * pg_foreign_server entry being outdated; but that would be more
	 * complicated, and it's probably not worth the trouble.  So for now, just
	 * flush all entries.
	 */
	FUNC2(&status, ShippableCacheHash);
	while ((entry = (ShippableCacheEntry *) FUNC3(&status)) != NULL)
	{
		if (FUNC1(ShippableCacheHash,
						(void *) &entry->key,
						HASH_REMOVE,
						NULL) == NULL)
			FUNC0(ERROR, "hash table corrupted");
	}
}