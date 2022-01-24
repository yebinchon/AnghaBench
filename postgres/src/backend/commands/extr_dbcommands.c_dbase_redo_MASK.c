#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  db_id; int /*<<< orphan*/  tablespace_id; } ;
typedef  TYPE_1__ xl_dbase_drop_rec ;
struct TYPE_4__ {int /*<<< orphan*/  src_db_id; int /*<<< orphan*/  tablespace_id; int /*<<< orphan*/  db_id; int /*<<< orphan*/  src_tablespace_id; } ;
typedef  TYPE_2__ xl_dbase_create_rec ;
typedef  scalar_t__ uint8 ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  XLogReaderState ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InHotStandby ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 scalar_t__ XLOG_DBASE_CREATE ; 
 scalar_t__ XLOG_DBASE_DROP ; 
 scalar_t__ XLR_INFO_MASK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 scalar_t__ FUNC19 (char*,struct stat*) ; 

void
FUNC20(XLogReaderState *record)
{
	uint8		info = FUNC12(record) & ~XLR_INFO_MASK;

	/* Backup blocks are not used in dbase records */
	FUNC0(!FUNC13(record));

	if (info == XLOG_DBASE_CREATE)
	{
		xl_dbase_create_rec *xlrec = (xl_dbase_create_rec *) FUNC11(record);
		char	   *src_path;
		char	   *dst_path;
		struct stat st;

		src_path = FUNC4(xlrec->src_db_id, xlrec->src_tablespace_id);
		dst_path = FUNC4(xlrec->db_id, xlrec->tablespace_id);

		/*
		 * Our theory for replaying a CREATE is to forcibly drop the target
		 * subdirectory if present, then re-copy the source data. This may be
		 * more work than needed, but it is simple to implement.
		 */
		if (FUNC19(dst_path, &st) == 0 && FUNC8(st.st_mode))
		{
			if (!FUNC18(dst_path, true))
				/* If this failed, copydir() below is going to error. */
				FUNC16(WARNING,
						(FUNC17("some useless files may be left behind in old database directory \"%s\"",
								dst_path)));
		}

		/*
		 * Force dirty buffers out to disk, to ensure source database is
		 * up-to-date for the copy.
		 */
		FUNC2(xlrec->src_db_id);

		/*
		 * Copy this subdirectory to the new location
		 *
		 * We don't need to copy subdirectories
		 */
		FUNC14(src_path, dst_path, false);
	}
	else if (info == XLOG_DBASE_DROP)
	{
		xl_dbase_drop_rec *xlrec = (xl_dbase_drop_rec *) FUNC11(record);
		char	   *dst_path;

		dst_path = FUNC4(xlrec->db_id, xlrec->tablespace_id);

		if (InHotStandby)
		{
			/*
			 * Lock database while we resolve conflicts to ensure that
			 * InitPostgres() cannot fully re-execute concurrently. This
			 * avoids backends re-connecting automatically to same database,
			 * which can happen in some cases.
			 *
			 * This will lock out walsenders trying to connect to db-specific
			 * slots for logical decoding too, so it's safe for us to drop
			 * slots.
			 */
			FUNC5(DatabaseRelationId, xlrec->db_id, 0, AccessExclusiveLock);
			FUNC7(xlrec->db_id);
		}

		/* Drop any database-specific replication slots */
		FUNC6(xlrec->db_id);

		/* Drop pages for this database that are in the shared buffer cache */
		FUNC1(xlrec->db_id);

		/* Also, clean out any fsync requests that might be pending in md.c */
		FUNC3(xlrec->db_id);

		/* Clean out the xlog relcache too */
		FUNC10(xlrec->db_id);

		/* And remove the physical files */
		if (!FUNC18(dst_path, true))
			FUNC16(WARNING,
					(FUNC17("some useless files may be left behind in old database directory \"%s\"",
							dst_path)));

		if (InHotStandby)
		{
			/*
			 * Release locks prior to commit. XXX There is a race condition
			 * here that may allow backends to reconnect, but the window for
			 * this is small because the gap between here and commit is mostly
			 * fairly small and it is unlikely that people will be dropping
			 * databases that we are trying to connect to anyway.
			 */
			FUNC9(DatabaseRelationId, xlrec->db_id, 0, AccessExclusiveLock);
		}
	}
	else
		FUNC15(PANIC, "dbase_redo: unknown op code %u", info);
}