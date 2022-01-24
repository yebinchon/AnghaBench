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

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* pgstat_stat_directory ; 
 char* pgstat_stat_filename ; 
 char* pgstat_stat_tmpname ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(const char *newval, void *extra)
{
	/* check_canonical_path already canonicalized newval for us */
	char	   *dname;
	char	   *tname;
	char	   *fname;

	/* directory */
	dname = FUNC1(ERROR, FUNC3(newval) + 1);	/* runtime dir */
	FUNC2(dname, "%s", newval);

	/* global stats */
	tname = FUNC1(ERROR, FUNC3(newval) + 12); /* /global.tmp */
	FUNC2(tname, "%s/global.tmp", newval);
	fname = FUNC1(ERROR, FUNC3(newval) + 13); /* /global.stat */
	FUNC2(fname, "%s/global.stat", newval);

	if (pgstat_stat_directory)
		FUNC0(pgstat_stat_directory);
	pgstat_stat_directory = dname;
	if (pgstat_stat_tmpname)
		FUNC0(pgstat_stat_tmpname);
	pgstat_stat_tmpname = tname;
	if (pgstat_stat_filename)
		FUNC0(pgstat_stat_filename);
	pgstat_stat_filename = fname;
}