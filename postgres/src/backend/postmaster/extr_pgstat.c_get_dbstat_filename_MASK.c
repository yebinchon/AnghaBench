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
typedef  int Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 char* PGSTAT_STAT_PERMANENT_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* pgstat_stat_directory ; 
 int FUNC1 (char*,int,char*,char*,int,char*) ; 

__attribute__((used)) static void
FUNC2(bool permanent, bool tempname, Oid databaseid,
					char *filename, int len)
{
	int			printed;

	/* NB -- pgstat_reset_remove_files knows about the pattern this uses */
	printed = FUNC1(filename, len, "%s/db_%u.%s",
					   permanent ? PGSTAT_STAT_PERMANENT_DIRECTORY :
					   pgstat_stat_directory,
					   databaseid,
					   tempname ? "tmp" : "stat");
	if (printed >= len)
		FUNC0(ERROR, "overlength pgstat path");
}