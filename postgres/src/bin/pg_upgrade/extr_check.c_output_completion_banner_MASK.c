#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  major_version; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_REPORT ; 
 TYPE_1__ old_cluster ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

void
FUNC2(char *analyze_script_file_name,
						 char *deletion_script_file_name)
{
	/* Did we copy the free space files? */
	if (FUNC0(old_cluster.major_version) >= 804)
		FUNC1(PG_REPORT,
			   "Optimizer statistics are not transferred by pg_upgrade so,\n"
			   "once you start the new server, consider running:\n"
			   "    %s\n\n", analyze_script_file_name);
	else
		FUNC1(PG_REPORT,
			   "Optimizer statistics and free space information are not transferred\n"
			   "by pg_upgrade so, once you start the new server, consider running:\n"
			   "    %s\n\n", analyze_script_file_name);


	if (deletion_script_file_name)
		FUNC1(PG_REPORT,
			   "Running this script will delete the old cluster's data files:\n"
			   "    %s\n",
			   deletion_script_file_name);
	else
		FUNC1(PG_REPORT,
			   "Could not create a script to delete the old cluster's data files\n"
			   "because user-defined tablespaces or the new cluster's data directory\n"
			   "exist in the old cluster directory.  The old cluster's contents must\n"
			   "be deleted manually.\n");
}