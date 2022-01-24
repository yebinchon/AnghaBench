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
typedef  int /*<<< orphan*/  TSConfigCacheEntry ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ HASHCTL ;

/* Variables and functions */
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  InvalidateTSCacheCallBack ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSCONFIGMAP ; 
 int /*<<< orphan*/  TSCONFIGOID ; 
 int /*<<< orphan*/  TSConfigCacheHash ; 
 int /*<<< orphan*/  FUNC4 (char*,int,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC5(void)
{
	HASHCTL		ctl;

	FUNC2(&ctl, 0, sizeof(ctl));
	ctl.keysize = sizeof(Oid);
	ctl.entrysize = sizeof(TSConfigCacheEntry);
	TSConfigCacheHash = FUNC4("Tsearch configuration cache", 16,
									&ctl, HASH_ELEM | HASH_BLOBS);
	/* Flush cache on pg_ts_config and pg_ts_config_map changes */
	FUNC0(TSCONFIGOID, InvalidateTSCacheCallBack,
								  FUNC3(TSConfigCacheHash));
	FUNC0(TSCONFIGMAP, InvalidateTSCacheCallBack,
								  FUNC3(TSConfigCacheHash));

	/* Also make sure CacheMemoryContext exists */
	if (!CacheMemoryContext)
		FUNC1();
}