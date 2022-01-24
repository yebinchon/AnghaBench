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
struct TYPE_4__ {int /*<<< orphan*/  link; } ;
typedef  TYPE_1__ pdo_dblib_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;
typedef  scalar_t__ RETCODE ;
typedef  int /*<<< orphan*/  DBINT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 scalar_t__ NO_MORE_RESULTS ; 
 scalar_t__ NO_MORE_ROWS ; 
 int /*<<< orphan*/  SQLCHAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int) ; 

char *FUNC10(pdo_dbh_t *dbh, const char *name, size_t *len)
{
	pdo_dblib_db_handle *H = (pdo_dblib_db_handle *)dbh->driver_data;

	RETCODE ret;
	char *id = NULL;

	/*
	 * Would use scope_identity() but it's not implemented on Sybase
	 */

	if (FAIL == FUNC1(H->link, "SELECT @@IDENTITY")) {
		return NULL;
	}

	if (FAIL == FUNC8(H->link)) {
		return NULL;
	}

	ret = FUNC7(H->link);
	if (ret == FAIL || ret == NO_MORE_RESULTS) {
		FUNC0(H->link);
		return NULL;
	}

	ret = FUNC6(H->link);

	if (ret == FAIL || ret == NO_MORE_ROWS) {
		FUNC0(H->link);
		return NULL;
	}

	if (FUNC5(H->link, 1) == 0) {
		FUNC0(H->link);
		return NULL;
	}

	id = FUNC9(32);
	*len = FUNC3(NULL, (FUNC2(H->link, 1)) , (FUNC4(H->link, 1)) , (FUNC5(H->link, 1)), SQLCHAR, (BYTE *)id, (DBINT)-1);

	FUNC0(H->link);
	return id;
}