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
typedef  int zend_long ;
struct TYPE_4__ {int /*<<< orphan*/  link; int /*<<< orphan*/  err; } ;
typedef  TYPE_1__ pdo_dblib_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;
typedef  scalar_t__ RETCODE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_long FUNC8(pdo_dbh_t *dbh, const char *sql, size_t sql_len)
{
	pdo_dblib_db_handle *H = (pdo_dblib_db_handle *)dbh->driver_data;
	RETCODE ret, resret;

	FUNC6(H->link, (BYTE*)&H->err);

	if (FAIL == FUNC2(H->link, sql)) {
		return -1;
	}

	if (FAIL == FUNC7(H->link)) {
		return -1;
	}

	resret = FUNC5(H->link);

	if (resret == FAIL) {
		return -1;
	}

	ret = FUNC3(H->link);
	if (ret == FAIL) {
		return -1;
	}

	if (FUNC4(H->link) <= 0) {
		return FUNC0(H->link);
	}

	/* throw away any rows it might have returned */
	FUNC1(H->link);

	return FUNC0(H->link);
}