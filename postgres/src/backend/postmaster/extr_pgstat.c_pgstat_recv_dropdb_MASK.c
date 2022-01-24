#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  m_databaseid; } ;
struct TYPE_5__ {int /*<<< orphan*/ * functions; int /*<<< orphan*/ * tables; } ;
typedef  TYPE_1__ PgStat_StatDBEntry ;
typedef  TYPE_2__ PgStat_MsgDropdb ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pgStatDBHash ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(PgStat_MsgDropdb *msg, int len)
{
	Oid			dbid = msg->m_databaseid;
	PgStat_StatDBEntry *dbentry;

	/*
	 * Lookup the database in the hashtable.
	 */
	dbentry = FUNC6(dbid, false);

	/*
	 * If found, remove it (along with the db statfile).
	 */
	if (dbentry)
	{
		char		statfile[MAXPGPATH];

		FUNC3(false, false, dbid, statfile, MAXPGPATH);

		FUNC0(DEBUG2, "removing stats file \"%s\"", statfile);
		FUNC7(statfile);

		if (dbentry->tables != NULL)
			FUNC4(dbentry->tables);
		if (dbentry->functions != NULL)
			FUNC4(dbentry->functions);

		if (FUNC5(pgStatDBHash,
						(void *) &dbid,
						HASH_REMOVE, NULL) == NULL)
			FUNC1(ERROR,
					(FUNC2("database hash table corrupted during cleanup --- abort")));
	}
}