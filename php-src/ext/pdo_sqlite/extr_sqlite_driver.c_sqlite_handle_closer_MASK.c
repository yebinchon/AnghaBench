#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* errmsg; } ;
typedef  TYPE_1__ pdo_sqlite_error_info ;
struct TYPE_8__ {int /*<<< orphan*/ * db; TYPE_1__ einfo; } ;
typedef  TYPE_2__ pdo_sqlite_db_handle ;
struct TYPE_9__ {int /*<<< orphan*/ * driver_data; int /*<<< orphan*/  is_persistent; } ;
typedef  TYPE_3__ pdo_dbh_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(pdo_dbh_t *dbh) /* {{{ */
{
	pdo_sqlite_db_handle *H = (pdo_sqlite_db_handle *)dbh->driver_data;

	if (H) {
		pdo_sqlite_error_info *einfo = &H->einfo;

		FUNC0(H);
		if (H->db) {
#ifdef HAVE_SQLITE3_CLOSE_V2
			sqlite3_close_v2(H->db);
#else
			FUNC2(H->db);
#endif
			H->db = NULL;
		}
		if (einfo->errmsg) {
			FUNC1(einfo->errmsg, dbh->is_persistent);
			einfo->errmsg = NULL;
		}
		FUNC1(H, dbh->is_persistent);
		dbh->driver_data = NULL;
	}
	return 0;
}