#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ cat_ver; } ;
struct TYPE_8__ {int /*<<< orphan*/  pgdata; int /*<<< orphan*/  bindir; TYPE_1__ controldata; int /*<<< orphan*/  major_version; } ;
struct TYPE_6__ {scalar_t__ cat_ver; scalar_t__ nextxlogfile; scalar_t__ chkpnt_nxtmulti; int /*<<< orphan*/  chkpnt_oldstMulti; int /*<<< orphan*/  chkpnt_nxtmxoff; scalar_t__ chkpnt_nxtxid; scalar_t__ chkpnt_nxtepoch; } ;
struct TYPE_7__ {TYPE_2__ controldata; int /*<<< orphan*/  major_version; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MULTIXACT_FORMATCHANGE_CAT_VER ; 
 int /*<<< orphan*/  UTILITY_LOG_FILE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,...) ; 
 TYPE_4__ new_cluster ; 
 TYPE_3__ old_cluster ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(void)
{
	/*
	 * Copy old commit logs to new data dir. pg_clog has been renamed to
	 * pg_xact in post-10 clusters.
	 */
	FUNC2(FUNC0(old_cluster.major_version) < 1000 ?
					  "pg_clog" : "pg_xact",
					  FUNC0(new_cluster.major_version) < 1000 ?
					  "pg_clog" : "pg_xact");

	/* set the next transaction id and epoch of the new cluster */
	FUNC4("Setting next transaction ID and epoch for new cluster");
	FUNC3(UTILITY_LOG_FILE, NULL, true, true,
			  "\"%s/pg_resetwal\" -f -x %u \"%s\"",
			  new_cluster.bindir, old_cluster.controldata.chkpnt_nxtxid,
			  new_cluster.pgdata);
	FUNC3(UTILITY_LOG_FILE, NULL, true, true,
			  "\"%s/pg_resetwal\" -f -e %u \"%s\"",
			  new_cluster.bindir, old_cluster.controldata.chkpnt_nxtepoch,
			  new_cluster.pgdata);
	/* must reset commit timestamp limits also */
	FUNC3(UTILITY_LOG_FILE, NULL, true, true,
			  "\"%s/pg_resetwal\" -f -c %u,%u \"%s\"",
			  new_cluster.bindir,
			  old_cluster.controldata.chkpnt_nxtxid,
			  old_cluster.controldata.chkpnt_nxtxid,
			  new_cluster.pgdata);
	FUNC1();

	/*
	 * If the old server is before the MULTIXACT_FORMATCHANGE_CAT_VER change
	 * (see pg_upgrade.h) and the new server is after, then we don't copy
	 * pg_multixact files, but we need to reset pg_control so that the new
	 * server doesn't attempt to read multis older than the cutoff value.
	 */
	if (old_cluster.controldata.cat_ver >= MULTIXACT_FORMATCHANGE_CAT_VER &&
		new_cluster.controldata.cat_ver >= MULTIXACT_FORMATCHANGE_CAT_VER)
	{
		FUNC2("pg_multixact/offsets", "pg_multixact/offsets");
		FUNC2("pg_multixact/members", "pg_multixact/members");

		FUNC4("Setting next multixact ID and offset for new cluster");

		/*
		 * we preserve all files and contents, so we must preserve both "next"
		 * counters here and the oldest multi present on system.
		 */
		FUNC3(UTILITY_LOG_FILE, NULL, true, true,
				  "\"%s/pg_resetwal\" -O %u -m %u,%u \"%s\"",
				  new_cluster.bindir,
				  old_cluster.controldata.chkpnt_nxtmxoff,
				  old_cluster.controldata.chkpnt_nxtmulti,
				  old_cluster.controldata.chkpnt_oldstMulti,
				  new_cluster.pgdata);
		FUNC1();
	}
	else if (new_cluster.controldata.cat_ver >= MULTIXACT_FORMATCHANGE_CAT_VER)
	{
		/*
		 * Remove offsets/0000 file created by initdb that no longer matches
		 * the new multi-xid value.  "members" starts at zero so no need to
		 * remove it.
		 */
		FUNC5("pg_multixact/offsets", false);

		FUNC4("Setting oldest multixact ID in new cluster");

		/*
		 * We don't preserve files in this case, but it's important that the
		 * oldest multi is set to the latest value used by the old system, so
		 * that multixact.c returns the empty set for multis that might be
		 * present on disk.  We set next multi to the value following that; it
		 * might end up wrapped around (i.e. 0) if the old cluster had
		 * next=MaxMultiXactId, but multixact.c can cope with that just fine.
		 */
		FUNC3(UTILITY_LOG_FILE, NULL, true, true,
				  "\"%s/pg_resetwal\" -m %u,%u \"%s\"",
				  new_cluster.bindir,
				  old_cluster.controldata.chkpnt_nxtmulti + 1,
				  old_cluster.controldata.chkpnt_nxtmulti,
				  new_cluster.pgdata);
		FUNC1();
	}

	/* now reset the wal archives in the new cluster */
	FUNC4("Resetting WAL archives");
	FUNC3(UTILITY_LOG_FILE, NULL, true, true,
	/* use timeline 1 to match controldata and no WAL history file */
			  "\"%s/pg_resetwal\" -l 00000001%s \"%s\"", new_cluster.bindir,
			  old_cluster.controldata.nextxlogfile + 8,
			  new_cluster.pgdata);
	FUNC1();
}