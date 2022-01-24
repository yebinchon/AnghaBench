#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_6__ {scalar_t__ userid; scalar_t__ dbid; scalar_t__ queryid; } ;
typedef  TYPE_1__ pgssHashKey ;
struct TYPE_7__ {TYPE_1__ key; } ;
typedef  TYPE_2__ pgssEntry ;
struct TYPE_8__ {int /*<<< orphan*/  lock; scalar_t__ extent; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  PGSS_TEXT_FILE ; 
 int /*<<< orphan*/  PG_BINARY_W ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_3__* pgss ; 
 int /*<<< orphan*/  pgss_hash ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static void
FUNC16(Oid userid, Oid dbid, uint64 queryid)
{
	HASH_SEQ_STATUS hash_seq;
	pgssEntry  *entry;
	FILE	   *qfile;
	long		num_entries;
	long		num_remove = 0;
	pgssHashKey key;

	if (!pgss || !pgss_hash)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC8("pg_stat_statements must be loaded via shared_preload_libraries")));

	FUNC2(pgss->lock, LW_EXCLUSIVE);
	num_entries = FUNC11(pgss_hash);

	if (userid != 0 && dbid != 0 && queryid != FUNC4(0))
	{
		/* If all the parameters are available, use the fast path. */
		key.userid = userid;
		key.dbid = dbid;
		key.queryid = queryid;

		/* Remove the key if exists */
		entry = (pgssEntry *) FUNC12(pgss_hash, &key, HASH_REMOVE, NULL);
		if (entry)				/* found */
			num_remove++;
	}
	else if (userid != 0 || dbid != 0 || queryid != FUNC4(0))
	{
		/* Remove entries corresponding to valid parameters. */
		FUNC13(&hash_seq, pgss_hash);
		while ((entry = FUNC14(&hash_seq)) != NULL)
		{
			if ((!userid || entry->key.userid == userid) &&
				(!dbid || entry->key.dbid == dbid) &&
				(!queryid || entry->key.queryid == queryid))
			{
				FUNC12(pgss_hash, &entry->key, HASH_REMOVE, NULL);
				num_remove++;
			}
		}
	}
	else
	{
		/* Remove all entries. */
		FUNC13(&hash_seq, pgss_hash);
		while ((entry = FUNC14(&hash_seq)) != NULL)
		{
			FUNC12(pgss_hash, &entry->key, HASH_REMOVE, NULL);
			num_remove++;
		}
	}

	/* All entries are removed? */
	if (num_entries != num_remove)
		goto release_lock;

	/*
	 * Write new empty query file, perhaps even creating a new one to recover
	 * if the file was missing.
	 */
	qfile = FUNC0(PGSS_TEXT_FILE, PG_BINARY_W);
	if (qfile == NULL)
	{
		FUNC5(LOG,
				(FUNC7(),
				 FUNC8("could not create file \"%s\": %m",
						PGSS_TEXT_FILE)));
		goto done;
	}

	/* If ftruncate fails, log it, but it's not a fatal problem */
	if (FUNC10(FUNC9(qfile), 0) != 0)
		FUNC5(LOG,
				(FUNC7(),
				 FUNC8("could not truncate file \"%s\": %m",
						PGSS_TEXT_FILE)));

	FUNC1(qfile);

done:
	pgss->extent = 0;
	/* This counts as a query text garbage collection for our purposes */
	FUNC15();

release_lock:
	FUNC3(pgss->lock);
}