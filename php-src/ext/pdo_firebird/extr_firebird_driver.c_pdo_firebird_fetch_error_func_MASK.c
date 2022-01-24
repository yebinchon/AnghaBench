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
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_long ;
typedef  int /*<<< orphan*/  pdo_stmt_t ;
struct TYPE_4__ {scalar_t__ last_app_error; int /*<<< orphan*/ * isc_status; } ;
typedef  TYPE_1__ pdo_firebird_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  ISC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (scalar_t__) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/  const**) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(pdo_dbh_t *dbh, pdo_stmt_t *stmt, zval *info) /* {{{ */
{
	pdo_firebird_db_handle *H = (pdo_firebird_db_handle *)dbh->driver_data;
	const ISC_STATUS *s = H->isc_status;
	char buf[400];
	zend_long i = 0, l, sqlcode = FUNC4(s);

	if (sqlcode) {
		FUNC0(info, sqlcode);

		while ((sizeof(buf)>(i+2))&&(l = FUNC3(&buf[i],(sizeof(buf)-i-2),&s))) {
			i += l;
			FUNC5(&buf[i++], " ");
		}
		FUNC1(info, buf);
	} else if (H->last_app_error) {
		FUNC0(info, -999);
		FUNC1(info, FUNC2(H->last_app_error));
	}
	return 1;
}