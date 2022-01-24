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
struct TYPE_5__ {struct TYPE_5__* db_name; int /*<<< orphan*/  rel_arr; } ;
struct TYPE_4__ {int ndbs; TYPE_2__* dbs; } ;
typedef  TYPE_1__ DbInfoArr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2(DbInfoArr *db_arr)
{
	int			dbnum;

	for (dbnum = 0; dbnum < db_arr->ndbs; dbnum++)
	{
		FUNC0(&db_arr->dbs[dbnum].rel_arr);
		FUNC1(db_arr->dbs[dbnum].db_name);
	}
	FUNC1(db_arr->dbs);
	db_arr->dbs = NULL;
	db_arr->ndbs = 0;
}