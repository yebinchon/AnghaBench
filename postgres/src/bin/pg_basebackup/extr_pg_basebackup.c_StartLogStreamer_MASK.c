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
typedef  int uint64 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  statusdir ;
struct TYPE_5__ {int timeline; char* sysidentifier; int startptr; char* xlog; int /*<<< orphan*/  bgconn; } ;
typedef  TYPE_1__ logstreamer_param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int,int,int) ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_1__*) ; 
 int MAXPGPATH ; 
 scalar_t__ MINIMUM_VERSION_FOR_PG_WAL ; 
 scalar_t__ MINIMUM_VERSION_FOR_TEMP_SLOTS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WalSegSz ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* basedir ; 
 scalar_t__ bgchild ; 
 int /*<<< orphan*/  bgpipe ; 
 int /*<<< orphan*/  conn ; 
 scalar_t__ create_slot ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 () ; 
 char format ; 
 int /*<<< orphan*/  kill_bgchild_atexit ; 
 int /*<<< orphan*/  pg_dir_create_mode ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 
 TYPE_1__* FUNC12 (int) ; 
 scalar_t__ FUNC13 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char*,int) ; 
 scalar_t__ replication_slot ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*,char*) ; 
 int FUNC17 (char*,char*,int*,int*) ; 
 int temp_replication_slot ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC18(char *startpos, uint32 timeline, char *sysidentifier)
{
	logstreamer_param *param;
	uint32		hi,
				lo;
	char		statusdir[MAXPGPATH];

	param = FUNC12(sizeof(logstreamer_param));
	param->timeline = timeline;
	param->sysidentifier = sysidentifier;

	/* Convert the starting position */
	if (FUNC17(startpos, "%X/%X", &hi, &lo) != 2)
	{
		FUNC10("could not parse write-ahead log location \"%s\"",
					 startpos);
		FUNC8(1);
	}
	param->startptr = ((uint64) hi) << 32 | lo;
	/* Round off to even segment position */
	param->startptr -= FUNC5(param->startptr, WalSegSz);

#ifndef WIN32
	/* Create our background pipe */
	if (FUNC14(bgpipe) < 0)
	{
		FUNC10("could not create pipe for background process: %m");
		FUNC8(1);
	}
#endif

	/* Get a second connection */
	param->bgconn = FUNC1();
	if (!param->bgconn)
		/* Error message already written in GetConnection() */
		FUNC8(1);

	/* In post-10 cluster, pg_xlog has been renamed to pg_wal */
	FUNC16(param->xlog, sizeof(param->xlog), "%s/%s",
			 basedir,
			 FUNC4(conn) < MINIMUM_VERSION_FOR_PG_WAL ?
			 "pg_xlog" : "pg_wal");

	/* Temporary replication slots are only supported in 10 and newer */
	if (FUNC4(conn) < MINIMUM_VERSION_FOR_TEMP_SLOTS)
		temp_replication_slot = false;

	/*
	 * Create replication slot if requested
	 */
	if (temp_replication_slot && !replication_slot)
		replication_slot = FUNC15("pg_basebackup_%d", (int) FUNC3(param->bgconn));
	if (temp_replication_slot || create_slot)
	{
		if (!FUNC0(param->bgconn, replication_slot, NULL,
								   temp_replication_slot, true, true, false))
			FUNC8(1);

		if (verbose)
		{
			if (temp_replication_slot)
				FUNC11("created temporary replication slot \"%s\"",
							replication_slot);
			else
				FUNC11("created replication slot \"%s\"",
							replication_slot);
		}
	}

	if (format == 'p')
	{
		/*
		 * Create pg_wal/archive_status or pg_xlog/archive_status (and thus
		 * pg_wal or pg_xlog) depending on the target server so we can write
		 * to basedir/pg_wal or basedir/pg_xlog as the directory entry in the
		 * tar file may arrive later.
		 */
		FUNC16(statusdir, sizeof(statusdir), "%s/%s/archive_status",
				 basedir,
				 FUNC4(conn) < MINIMUM_VERSION_FOR_PG_WAL ?
				 "pg_xlog" : "pg_wal");

		if (FUNC13(statusdir, pg_dir_create_mode) != 0 && errno != EEXIST)
		{
			FUNC10("could not create directory \"%s\": %m", statusdir);
			FUNC8(1);
		}
	}

	/*
	 * Start a child process and tell it to start streaming. On Unix, this is
	 * a fork(). On Windows, we create a thread.
	 */
#ifndef WIN32
	bgchild = FUNC9();
	if (bgchild == 0)
	{
		/* in child process */
		FUNC8(FUNC2(param));
	}
	else if (bgchild < 0)
	{
		FUNC10("could not create background process: %m");
		FUNC8(1);
	}

	/*
	 * Else we are in the parent process and all is well.
	 */
	FUNC7(kill_bgchild_atexit);
#else							/* WIN32 */
	bgchild = _beginthreadex(NULL, 0, (void *) LogStreamerMain, param, 0, NULL);
	if (bgchild == 0)
	{
		pg_log_error("could not create background thread: %m");
		exit(1);
	}
#endif
}