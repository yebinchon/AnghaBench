#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* errmsg; } ;
struct TYPE_7__ {TYPE_1__ einfo; int /*<<< orphan*/ * server; } ;
typedef  TYPE_2__ pdo_pgsql_db_handle ;
struct TYPE_8__ {int /*<<< orphan*/ * driver_data; int /*<<< orphan*/  is_persistent; } ;
typedef  TYPE_3__ pdo_dbh_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(pdo_dbh_t *dbh) /* {{{ */
{
	pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
	if (H) {
		if (H->server) {
			FUNC0(H->server);
			H->server = NULL;
		}
		if (H->einfo.errmsg) {
			FUNC1(H->einfo.errmsg, dbh->is_persistent);
			H->einfo.errmsg = NULL;
		}
		FUNC1(H, dbh->is_persistent);
		dbh->driver_data = NULL;
	}
	return 0;
}