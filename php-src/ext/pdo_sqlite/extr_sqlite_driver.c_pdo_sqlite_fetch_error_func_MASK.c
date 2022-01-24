#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  pdo_stmt_t ;
struct TYPE_5__ {int /*<<< orphan*/  errmsg; scalar_t__ errcode; } ;
typedef  TYPE_1__ pdo_sqlite_error_info ;
struct TYPE_6__ {TYPE_1__ einfo; } ;
typedef  TYPE_2__ pdo_sqlite_db_handle ;
struct TYPE_7__ {scalar_t__ driver_data; } ;
typedef  TYPE_3__ pdo_dbh_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(pdo_dbh_t *dbh, pdo_stmt_t *stmt, zval *info)
{
	pdo_sqlite_db_handle *H = (pdo_sqlite_db_handle *)dbh->driver_data;
	pdo_sqlite_error_info *einfo = &H->einfo;

	if (einfo->errcode) {
		FUNC0(info, einfo->errcode);
		FUNC1(info, einfo->errmsg);
	}

	return 1;
}