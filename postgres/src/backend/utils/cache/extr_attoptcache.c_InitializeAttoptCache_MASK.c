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
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef  TYPE_1__ HASHCTL ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttoptCacheKey ;
typedef  int /*<<< orphan*/  AttoptCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNUM ; 
 int /*<<< orphan*/  AttoptCacheHash ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  InvalidateAttoptCacheCallback ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC4(void)
{
	HASHCTL		ctl;

	/* Initialize the hash table. */
	FUNC2(&ctl, 0, sizeof(ctl));
	ctl.keysize = sizeof(AttoptCacheKey);
	ctl.entrysize = sizeof(AttoptCacheEntry);
	AttoptCacheHash =
		FUNC3("Attopt cache", 256, &ctl,
					HASH_ELEM | HASH_BLOBS);

	/* Make sure we've initialized CacheMemoryContext. */
	if (!CacheMemoryContext)
		FUNC1();

	/* Watch for invalidation events. */
	FUNC0(ATTNUM,
								  InvalidateAttoptCacheCallback,
								  (Datum) 0);
}