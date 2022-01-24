#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  chkpnt_nxtoid; } ;
struct TYPE_10__ {int /*<<< orphan*/  pgdata; int /*<<< orphan*/  bindir; TYPE_1__ controldata; int /*<<< orphan*/  dbarr; } ;
struct TYPE_9__ {scalar_t__ transfer_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_MODE_MASK_OWNER ; 
 int /*<<< orphan*/  PG_REPORT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ TRANSFER_MODE_LINK ; 
 int /*<<< orphan*/  UTILITY_LOG_FILE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 
 int /*<<< orphan*/  FUNC12 (char**) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 TYPE_3__ new_cluster ; 
 TYPE_3__ old_cluster ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int,char**) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  pg_mode_mask ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (char*,int*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 TYPE_2__ user_opts ; 

int
FUNC36(int argc, char **argv)
{
	char	   *analyze_script_file_name = NULL;
	char	   *deletion_script_file_name = NULL;
	bool		live_check = false;

	FUNC24(argv[0]);
	FUNC29(argv[0], FUNC1("pg_upgrade"));

	/* Set default restrictive mask until new cluster permissions are read */
	FUNC35(PG_MODE_MASK_OWNER);

	FUNC20(argc, argv);

	FUNC15();

	FUNC2(&old_cluster);
	FUNC2(&new_cluster);

	FUNC30(argv[0], &live_check);

	FUNC18(live_check);

	FUNC5();

	FUNC16(&old_cluster, live_check);
	FUNC16(&new_cluster, false);

	FUNC4(live_check);

	/* Set mask based on PGDATA permissions */
	if (!FUNC0(new_cluster.pgdata))
		FUNC21("could not read permissions of directory \"%s\": %s\n",
				 new_cluster.pgdata, FUNC33(errno));

	FUNC35(pg_mode_mask);

	FUNC3(live_check);


	/* -- NEW -- */
	FUNC31(&new_cluster, true);

	FUNC6();
	FUNC28();

	FUNC23(PG_REPORT,
		   "\n"
		   "Performing Upgrade\n"
		   "------------------\n");

	FUNC26();

	FUNC32(false);

	/*
	 * Destructive Changes to New Cluster
	 */

	FUNC9();

	/* New now using xids of the old system */

	/* -- NEW -- */
	FUNC31(&new_cluster, true);

	FUNC27();

	FUNC10();

	FUNC32(false);

	/*
	 * Most failures happen in create_new_objects(), which has completed at
	 * this point.  We do this here because it is just before linking, which
	 * will link the old and new cluster data files, preventing the old
	 * cluster from being safely started once the new cluster is started.
	 */
	if (user_opts.transfer_mode == TRANSFER_MODE_LINK)
		FUNC13();

	FUNC34(&old_cluster.dbarr, &new_cluster.dbarr,
								 old_cluster.pgdata, new_cluster.pgdata);

	/*
	 * Assuming OIDs are only used in system tables, there is no need to
	 * restore the OID counter because we have not transferred any OIDs from
	 * the old system, but we do it anyway just in case.  We do it late here
	 * because there is no need to have the schema load use new oids.
	 */
	FUNC25("Setting next OID for new cluster");
	FUNC14(UTILITY_LOG_FILE, NULL, true, true,
			  "\"%s/pg_resetwal\" -o %u \"%s\"",
			  new_cluster.bindir, old_cluster.controldata.chkpnt_nxtoid,
			  new_cluster.pgdata);
	FUNC7();

	FUNC25("Sync data directory to disk");
	FUNC14(UTILITY_LOG_FILE, NULL, true, true,
			  "\"%s/initdb\" --sync-only \"%s\"", new_cluster.bindir,
			  new_cluster.pgdata);
	FUNC7();

	FUNC11(&analyze_script_file_name);
	FUNC12(&deletion_script_file_name);

	FUNC17();

	FUNC23(PG_REPORT,
		   "\n"
		   "Upgrade Complete\n"
		   "----------------\n");

	FUNC19(analyze_script_file_name,
							 deletion_script_file_name);

	FUNC22(analyze_script_file_name);
	FUNC22(deletion_script_file_name);

	FUNC8();

	return 0;
}