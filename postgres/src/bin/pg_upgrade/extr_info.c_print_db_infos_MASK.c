#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ndbs; TYPE_1__* dbs; } ;
struct TYPE_4__ {int /*<<< orphan*/  rel_arr; int /*<<< orphan*/  db_name; } ;
typedef  TYPE_2__ DbInfoArr ;

/* Variables and functions */
 int /*<<< orphan*/  PG_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(DbInfoArr *db_arr)
{
	int			dbnum;

	for (dbnum = 0; dbnum < db_arr->ndbs; dbnum++)
	{
		FUNC0(PG_VERBOSE, "Database: %s\n", db_arr->dbs[dbnum].db_name);
		FUNC1(&db_arr->dbs[dbnum].rel_arr);
		FUNC0(PG_VERBOSE, "\n\n");
	}
}