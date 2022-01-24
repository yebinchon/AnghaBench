#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RelMapFile ;

/* Variables and functions */
 int /*<<< orphan*/  DatabasePath ; 
 int /*<<< orphan*/  GLOBALTABLESPACE_OID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  MyDatabaseTableSpace ; 
 int /*<<< orphan*/  RelationMappingLock ; 
 int /*<<< orphan*/  allowSystemTableMods ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  local_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shared_map ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(bool shared, const RelMapFile *updates)
{
	RelMapFile	newmap;

	/*
	 * Anyone updating a relation's mapping info should take exclusive lock on
	 * that rel and hold it until commit.  This ensures that there will not be
	 * concurrent updates on the same mapping value; but there could easily be
	 * concurrent updates on different values in the same file. We cover that
	 * by acquiring the RelationMappingLock, re-reading the target file to
	 * ensure it's up to date, applying the updates, and writing the data
	 * before releasing RelationMappingLock.
	 *
	 * There is only one RelationMappingLock.  In principle we could try to
	 * have one per mapping file, but it seems unlikely to be worth the
	 * trouble.
	 */
	FUNC0(RelationMappingLock, LW_EXCLUSIVE);

	/* Be certain we see any other updates just made */
	FUNC2(shared);

	/* Prepare updated data in a local variable */
	if (shared)
		FUNC3(&newmap, &shared_map, sizeof(RelMapFile));
	else
		FUNC3(&newmap, &local_map, sizeof(RelMapFile));

	/*
	 * Apply the updates to newmap.  No new mappings should appear, unless
	 * somebody is adding indexes to system catalogs.
	 */
	FUNC4(&newmap, updates, allowSystemTableMods);

	/* Write out the updated map and do other necessary tasks */
	FUNC5(shared, &newmap, true, true, true,
					  (shared ? InvalidOid : MyDatabaseId),
					  (shared ? GLOBALTABLESPACE_OID : MyDatabaseTableSpace),
					  DatabasePath);

	/* Now we can release the lock */
	FUNC1(RelationMappingLock);
}