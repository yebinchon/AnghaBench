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
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  AuthIdRelation_Rowtype_Id ; 
 int /*<<< orphan*/  AuthMemRelation_Rowtype_Id ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  DatabaseRelation_Rowtype_Id ; 
 int /*<<< orphan*/  Desc_pg_auth_members ; 
 int /*<<< orphan*/  Desc_pg_authid ; 
 int /*<<< orphan*/  Desc_pg_database ; 
 int /*<<< orphan*/  Desc_pg_shseclabel ; 
 int /*<<< orphan*/  Desc_pg_subscription ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Natts_pg_auth_members ; 
 int /*<<< orphan*/  Natts_pg_authid ; 
 int /*<<< orphan*/  Natts_pg_database ; 
 int /*<<< orphan*/  Natts_pg_shseclabel ; 
 int /*<<< orphan*/  Natts_pg_subscription ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SharedSecLabelRelation_Rowtype_Id ; 
 int /*<<< orphan*/  SubscriptionRelation_Rowtype_Id ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(void)
{
	MemoryContext oldcxt;

	/*
	 * relation mapper needs initialized too
	 */
	FUNC2();

	/*
	 * In bootstrap mode, the shared catalogs aren't there yet anyway, so do
	 * nothing.
	 */
	if (FUNC0())
		return;

	/*
	 * switch to cache memory context
	 */
	oldcxt = FUNC1(CacheMemoryContext);

	/*
	 * Try to load the shared relcache cache file.  If unsuccessful, bootstrap
	 * the cache with pre-made descriptors for the critical shared catalogs.
	 */
	if (!FUNC4(true))
	{
		FUNC3("pg_database", DatabaseRelation_Rowtype_Id, true,
				  Natts_pg_database, Desc_pg_database);
		FUNC3("pg_authid", AuthIdRelation_Rowtype_Id, true,
				  Natts_pg_authid, Desc_pg_authid);
		FUNC3("pg_auth_members", AuthMemRelation_Rowtype_Id, true,
				  Natts_pg_auth_members, Desc_pg_auth_members);
		FUNC3("pg_shseclabel", SharedSecLabelRelation_Rowtype_Id, true,
				  Natts_pg_shseclabel, Desc_pg_shseclabel);
		FUNC3("pg_subscription", SubscriptionRelation_Rowtype_Id, true,
				  Natts_pg_subscription, Desc_pg_subscription);

#define NUM_CRITICAL_SHARED_RELS	5	/* fix if you change list above */
	}

	FUNC1(oldcxt);
}