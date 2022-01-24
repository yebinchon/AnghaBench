#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
typedef  int uint32 ;
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  strfbuf ;
typedef  int /*<<< orphan*/  startpoint ;
typedef  scalar_t__ pg_time_t ;
typedef  int /*<<< orphan*/  XLogSegNo ;
typedef  scalar_t__ XLogRecPtr ;
typedef  int TimeLineID ;
struct TYPE_6__ {scalar_t__ minRecoveryPoint; int minRecoveryPointTLI; } ;
struct TYPE_4__ {scalar_t__ exclusiveBackupState; scalar_t__ nonExclusiveBackups; int forcePageWrites; } ;
struct TYPE_5__ {scalar_t__ lastFpwDisableRecPtr; int /*<<< orphan*/  info_lck; TYPE_1__ Insert; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* BACKUP_LABEL_FILE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_3__* ControlFile ; 
 int /*<<< orphan*/  ControlFileLock ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ EXCLUSIVE_BACKUP_IN_PROGRESS ; 
 scalar_t__ EXCLUSIVE_BACKUP_NONE ; 
 scalar_t__ EXCLUSIVE_BACKUP_STOPPING ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int MAXFNAMELEN ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RM_XLOG_ID ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  SESSION_BACKUP_NONE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 char* TABLESPACE_MAP ; 
 int ThisTimeLineID ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_BACKUP_END ; 
 scalar_t__ FUNC20 (char*) ; 
 scalar_t__ FUNC21 () ; 
 scalar_t__ FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 TYPE_2__* XLogCtl ; 
 int /*<<< orphan*/  FUNC24 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (char*,int) ; 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 (char*,...) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC37 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  log_timezone ; 
 char* FUNC38 (int) ; 
 int /*<<< orphan*/  FUNC39 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pg_stop_backup_callback ; 
 int /*<<< orphan*/  FUNC40 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (long) ; 
 int /*<<< orphan*/  sessionBackupState ; 
 int FUNC42 (char*,char*,...) ; 
 scalar_t__ FUNC43 (char*,struct stat*) ; 
 char* FUNC44 (char*,char) ; 
 scalar_t__ FUNC45 (char*,char*) ; 
 char* FUNC46 (char*,char*) ; 
 scalar_t__ FUNC47 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wal_segment_size ; 

XLogRecPtr
FUNC48(char *labelfile, bool waitforarchive, TimeLineID *stoptli_p)
{
	bool		exclusive = (labelfile == NULL);
	bool		backup_started_in_recovery = false;
	XLogRecPtr	startpoint;
	XLogRecPtr	stoppoint;
	TimeLineID	stoptli;
	pg_time_t	stamp_time;
	char		strfbuf[128];
	char		histfilepath[MAXPGPATH];
	char		startxlogfilename[MAXFNAMELEN];
	char		stopxlogfilename[MAXFNAMELEN];
	char		lastxlogfilename[MAXFNAMELEN];
	char		histfilename[MAXFNAMELEN];
	char		backupfrom[20];
	XLogSegNo	_logSegNo;
	FILE	   *lfp;
	FILE	   *fp;
	char		ch;
	int			seconds_before_warning;
	int			waits = 0;
	bool		reported_waiting = false;
	char	   *remaining;
	char	   *ptr;
	uint32		hi,
				lo;

	backup_started_in_recovery = FUNC12();

	/*
	 * Currently only non-exclusive backup can be taken during recovery.
	 */
	if (backup_started_in_recovery && exclusive)
		FUNC29(ERROR,
				(FUNC30(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC33("recovery is in progress"),
				 FUNC32("WAL control functions cannot be executed during recovery.")));

	/*
	 * During recovery, we don't need to check WAL level. Because, if WAL
	 * level is not sufficient, it's impossible to get here during recovery.
	 */
	if (!backup_started_in_recovery && !FUNC26())
		FUNC29(ERROR,
				(FUNC30(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC33("WAL level not sufficient for making an online backup"),
				 FUNC32("wal_level must be set to \"replica\" or \"logical\" at server start.")));

	if (exclusive)
	{
		/*
		 * At first, mark that we're now stopping an exclusive backup, to
		 * ensure that there are no other sessions currently running
		 * pg_start_backup() or pg_stop_backup().
		 */
		FUNC16();
		if (XLogCtl->Insert.exclusiveBackupState != EXCLUSIVE_BACKUP_IN_PROGRESS)
		{
			FUNC17();
			FUNC29(ERROR,
					(FUNC30(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC33("exclusive backup not in progress")));
		}
		XLogCtl->Insert.exclusiveBackupState = EXCLUSIVE_BACKUP_STOPPING;
		FUNC17();

		/*
		 * Remove backup_label. In case of failure, the state for an exclusive
		 * backup is switched back to in-progress.
		 */
		FUNC11(pg_stop_backup_callback, (Datum) FUNC4(exclusive));
		{
			/*
			 * Read the existing label file into memory.
			 */
			struct stat statbuf;
			int			r;

			if (FUNC43(BACKUP_LABEL_FILE, &statbuf))
			{
				/* should not happen per the upper checks */
				if (errno != ENOENT)
					FUNC29(ERROR,
							(FUNC31(),
							 FUNC33("could not stat file \"%s\": %m",
									BACKUP_LABEL_FILE)));
				FUNC29(ERROR,
						(FUNC30(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						 FUNC33("a backup is not in progress")));
			}

			lfp = FUNC0(BACKUP_LABEL_FILE, "r");
			if (!lfp)
			{
				FUNC29(ERROR,
						(FUNC31(),
						 FUNC33("could not read file \"%s\": %m",
								BACKUP_LABEL_FILE)));
			}
			labelfile = FUNC38(statbuf.st_size + 1);
			r = FUNC37(labelfile, statbuf.st_size, 1, lfp);
			labelfile[statbuf.st_size] = '\0';

			/*
			 * Close and remove the backup label file
			 */
			if (r != 1 || FUNC34(lfp) || FUNC7(lfp))
				FUNC29(ERROR,
						(FUNC31(),
						 FUNC33("could not read file \"%s\": %m",
								BACKUP_LABEL_FILE)));
			FUNC28(BACKUP_LABEL_FILE, ERROR);

			/*
			 * Remove tablespace_map file if present, it is created only if
			 * there are tablespaces.
			 */
			FUNC28(TABLESPACE_MAP, DEBUG1);
		}
		FUNC10(pg_stop_backup_callback, (Datum) FUNC4(exclusive));
	}

	/*
	 * OK to update backup counters, forcePageWrites and session-level lock.
	 *
	 * Note that CHECK_FOR_INTERRUPTS() must not occur while updating them.
	 * Otherwise they can be updated inconsistently, and which might cause
	 * do_pg_abort_backup() to fail.
	 */
	FUNC16();
	if (exclusive)
	{
		XLogCtl->Insert.exclusiveBackupState = EXCLUSIVE_BACKUP_NONE;
	}
	else
	{
		/*
		 * The user-visible pg_start/stop_backup() functions that operate on
		 * exclusive backups can be called at any time, but for non-exclusive
		 * backups, it is expected that each do_pg_start_backup() call is
		 * matched by exactly one do_pg_stop_backup() call.
		 */
		FUNC1(XLogCtl->Insert.nonExclusiveBackups > 0);
		XLogCtl->Insert.nonExclusiveBackups--;
	}

	if (XLogCtl->Insert.exclusiveBackupState == EXCLUSIVE_BACKUP_NONE &&
		XLogCtl->Insert.nonExclusiveBackups == 0)
	{
		XLogCtl->Insert.forcePageWrites = false;
	}

	/*
	 * Clean up session-level lock.
	 *
	 * You might think that WALInsertLockRelease() can be called before
	 * cleaning up session-level lock because session-level lock doesn't need
	 * to be protected with WAL insertion lock. But since
	 * CHECK_FOR_INTERRUPTS() can occur in it, session-level lock must be
	 * cleaned up before it.
	 */
	sessionBackupState = SESSION_BACKUP_NONE;

	FUNC17();

	/*
	 * Read and parse the START WAL LOCATION line (this code is pretty crude,
	 * but we are not expecting any variability in the file format).
	 */
	if (FUNC42(labelfile, "START WAL LOCATION: %X/%X (file %24s)%c",
			   &hi, &lo, startxlogfilename,
			   &ch) != 4 || ch != '\n')
		FUNC29(ERROR,
				(FUNC30(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC33("invalid data in file \"%s\"", BACKUP_LABEL_FILE)));
	startpoint = ((uint64) hi) << 32 | lo;
	remaining = FUNC44(labelfile, '\n') + 1;	/* %n is not portable enough */

	/*
	 * Parse the BACKUP FROM line. If we are taking an online backup from the
	 * standby, we confirm that the standby has not been promoted during the
	 * backup.
	 */
	ptr = FUNC46(remaining, "BACKUP FROM:");
	if (!ptr || FUNC42(ptr, "BACKUP FROM: %19s\n", backupfrom) != 1)
		FUNC29(ERROR,
				(FUNC30(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC33("invalid data in file \"%s\"", BACKUP_LABEL_FILE)));
	if (FUNC45(backupfrom, "standby") == 0 && !backup_started_in_recovery)
		FUNC29(ERROR,
				(FUNC30(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC33("the standby was promoted during online backup"),
				 FUNC32("This means that the backup being taken is corrupt "
						 "and should not be used. "
						 "Try taking another online backup.")));

	/*
	 * During recovery, we don't write an end-of-backup record. We assume that
	 * pg_control was backed up last and its minimum recovery point can be
	 * available as the backup end location. Since we don't have an
	 * end-of-backup record, we use the pg_control value to check whether
	 * we've reached the end of backup when starting recovery from this
	 * backup. We have no way of checking if pg_control wasn't backed up last
	 * however.
	 *
	 * We don't force a switch to new WAL file but it is still possible to
	 * wait for all the required files to be archived if waitforarchive is
	 * true. This is okay if we use the backup to start a standby and fetch
	 * the missing WAL using streaming replication. But in the case of an
	 * archive recovery, a user should set waitforarchive to true and wait for
	 * them to be archived to ensure that all the required files are
	 * available.
	 *
	 * We return the current minimum recovery point as the backup end
	 * location. Note that it can be greater than the exact backup end
	 * location if the minimum recovery point is updated after the backup of
	 * pg_control. This is harmless for current uses.
	 *
	 * XXX currently a backup history file is for informational and debug
	 * purposes only. It's not essential for an online backup. Furthermore,
	 * even if it's created, it will not be archived during recovery because
	 * an archiver is not invoked. So it doesn't seem worthwhile to write a
	 * backup history file during recovery.
	 */
	if (backup_started_in_recovery)
	{
		XLogRecPtr	recptr;

		/*
		 * Check to see if all WAL replayed during online backup contain
		 * full-page writes.
		 */
		FUNC14(&XLogCtl->info_lck);
		recptr = XLogCtl->lastFpwDisableRecPtr;
		FUNC15(&XLogCtl->info_lck);

		if (startpoint <= recptr)
			FUNC29(ERROR,
					(FUNC30(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC33("WAL generated with full_page_writes=off was replayed "
							"during online backup"),
					 FUNC32("This means that the backup being taken on the standby "
							 "is corrupt and should not be used. "
							 "Enable full_page_writes and run CHECKPOINT on the master, "
							 "and then try an online backup again.")));


		FUNC8(ControlFileLock, LW_SHARED);
		stoppoint = ControlFile->minRecoveryPoint;
		stoptli = ControlFile->minRecoveryPointTLI;
		FUNC9(ControlFileLock);
	}
	else
	{
		/*
		 * Write the backup-end xlog record
		 */
		FUNC23();
		FUNC27((char *) (&startpoint), sizeof(startpoint));
		stoppoint = FUNC25(RM_XLOG_ID, XLOG_BACKUP_END);
		stoptli = ThisTimeLineID;

		/*
		 * Force a switch to a new xlog segment file, so that the backup is
		 * valid as soon as archiver moves out the current segment file.
		 */
		FUNC13(false);

		FUNC18(stoppoint, _logSegNo, wal_segment_size);
		FUNC24(stopxlogfilename, stoptli, _logSegNo, wal_segment_size);

		/* Use the log timezone here, not the session timezone */
		stamp_time = (pg_time_t) FUNC47(NULL);
		FUNC40(strfbuf, sizeof(strfbuf),
					"%Y-%m-%d %H:%M:%S %Z",
					FUNC39(&stamp_time, log_timezone));

		/*
		 * Write the backup history file
		 */
		FUNC19(startpoint, _logSegNo, wal_segment_size);
		FUNC3(histfilepath, stoptli, _logSegNo,
							  startpoint, wal_segment_size);
		fp = FUNC0(histfilepath, "w");
		if (!fp)
			FUNC29(ERROR,
					(FUNC31(),
					 FUNC33("could not create file \"%s\": %m",
							histfilepath)));
		FUNC36(fp, "START WAL LOCATION: %X/%X (file %s)\n",
				(uint32) (startpoint >> 32), (uint32) startpoint, startxlogfilename);
		FUNC36(fp, "STOP WAL LOCATION: %X/%X (file %s)\n",
				(uint32) (stoppoint >> 32), (uint32) stoppoint, stopxlogfilename);

		/*
		 * Transfer remaining lines including label and start timeline to
		 * history file.
		 */
		FUNC36(fp, "%s", remaining);
		FUNC36(fp, "STOP TIME: %s\n", strfbuf);
		FUNC36(fp, "STOP TIMELINE: %u\n", stoptli);
		if (FUNC35(fp) || FUNC34(fp) || FUNC7(fp))
			FUNC29(ERROR,
					(FUNC31(),
					 FUNC33("could not write file \"%s\": %m",
							histfilepath)));

		/*
		 * Clean out any no-longer-needed history files.  As a side effect,
		 * this will post a .ready file for the newly created history file,
		 * notifying the archiver that history file may be archived
		 * immediately.
		 */
		FUNC6();
	}

	/*
	 * If archiving is enabled, wait for all the required WAL files to be
	 * archived before returning. If archiving isn't enabled, the required WAL
	 * needs to be transported via streaming replication (hopefully with
	 * wal_keep_segments set high enough), or some more exotic mechanism like
	 * polling and copying files from pg_wal with script. We have no knowledge
	 * of those mechanisms, so it's up to the user to ensure that he gets all
	 * the required WAL.
	 *
	 * We wait until both the last WAL file filled during backup and the
	 * history file have been archived, and assume that the alphabetic sorting
	 * property of the WAL files ensures any earlier WAL files are safely
	 * archived as well.
	 *
	 * We wait forever, since archive_command is supposed to work and we
	 * assume the admin wanted his backup to work completely. If you don't
	 * wish to wait, then either waitforarchive should be passed in as false,
	 * or you can set statement_timeout.  Also, some notices are issued to
	 * clue in anyone who might be doing this interactively.
	 */

	if (waitforarchive &&
		((!backup_started_in_recovery && FUNC21()) ||
		 (backup_started_in_recovery && FUNC22())))
	{
		FUNC18(stoppoint, _logSegNo, wal_segment_size);
		FUNC24(lastxlogfilename, stoptli, _logSegNo, wal_segment_size);

		FUNC19(startpoint, _logSegNo, wal_segment_size);
		FUNC2(histfilename, stoptli, _logSegNo,
							  startpoint, wal_segment_size);

		seconds_before_warning = 60;
		waits = 0;

		while (FUNC20(lastxlogfilename) ||
			   FUNC20(histfilename))
		{
			FUNC5();

			if (!reported_waiting && waits > 5)
			{
				FUNC29(NOTICE,
						(FUNC33("base backup done, waiting for required WAL segments to be archived")));
				reported_waiting = true;
			}

			FUNC41(1000000L);

			if (++waits >= seconds_before_warning)
			{
				seconds_before_warning *= 2;	/* This wraps in >10 years... */
				FUNC29(WARNING,
						(FUNC33("still waiting for all required WAL segments to be archived (%d seconds elapsed)",
								waits),
						 FUNC32("Check that your archive_command is executing properly.  "
								 "You can safely cancel this backup, "
								 "but the database backup will not be usable without all the WAL segments.")));
			}
		}

		FUNC29(NOTICE,
				(FUNC33("all required WAL segments have been archived")));
	}
	else if (waitforarchive)
		FUNC29(NOTICE,
				(FUNC33("WAL archiving is not enabled; you must ensure that all required WAL segments are copied through other means to complete the backup")));

	/*
	 * We're done.  As a convenience, return the ending WAL location.
	 */
	if (stoptli_p)
		*stoptli_p = stoptli;
	return stoppoint;
}