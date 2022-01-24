#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ cat_ver; } ;
struct TYPE_21__ {int /*<<< orphan*/  major_version; TYPE_1__ controldata; } ;
struct TYPE_20__ {scalar_t__ check; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ JSONB_FORMAT_CHANGE_CAT_VER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int) ; 
 TYPE_3__ old_cluster ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 TYPE_2__ user_opts ; 

void
FUNC20(bool live_check)
{
	/* -- OLD -- */

	if (!live_check)
		FUNC18(&old_cluster, true);

	/* Extract a list of databases and tables from the old cluster */
	FUNC10(&old_cluster);

	FUNC12();

	FUNC11();


	/*
	 * Check for various failure cases
	 */
	FUNC7(&old_cluster);
	FUNC8(&old_cluster);
	FUNC4(&old_cluster);
	FUNC5(&old_cluster);
	FUNC1(&old_cluster);

	/*
	 * Pre-PG 12 allowed tables to be declared WITH OIDS, which is not
	 * supported anymore. Verify there are none, iff applicable.
	 */
	if (FUNC0(old_cluster.major_version) <= 1100)
		FUNC6(&old_cluster);

	/*
	 * PG 12 changed the 'sql_identifier' type storage to be based on name,
	 * not varchar, which breaks on-disk format for existing data. So we need
	 * to prevent upgrade when used in user objects (tables, indexes, ...).
	 */
	if (FUNC0(old_cluster.major_version) <= 1100)
		FUNC14(&old_cluster);

	/*
	 * Pre-PG 10 allowed tables with 'unknown' type columns and non WAL logged
	 * hash indexes
	 */
	if (FUNC0(old_cluster.major_version) <= 906)
	{
		FUNC16(&old_cluster);
		if (user_opts.check)
			FUNC17(&old_cluster, true);
	}

	/* 9.5 and below should not have roles starting with pg_ */
	if (FUNC0(old_cluster.major_version) <= 905)
		FUNC3(&old_cluster);

	if (FUNC0(old_cluster.major_version) == 904 &&
		old_cluster.controldata.cat_ver < JSONB_FORMAT_CHANGE_CAT_VER)
		FUNC2(&old_cluster);

	/* Pre-PG 9.4 had a different 'line' data type internal format */
	if (FUNC0(old_cluster.major_version) <= 903)
		FUNC15(&old_cluster);

	/* Pre-PG 9.0 had no large object permissions */
	if (FUNC0(old_cluster.major_version) <= 804)
		FUNC13(&old_cluster, true);

	/*
	 * While not a check option, we do this now because this is the only time
	 * the old server is running.
	 */
	if (!user_opts.check)
		FUNC9();

	if (!live_check)
		FUNC19(false);
}