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
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_long ;
struct TYPE_7__ {int /*<<< orphan*/ * errmsg; scalar_t__ errcode; } ;
struct TYPE_8__ {int /*<<< orphan*/  db; TYPE_1__ einfo; } ;
typedef  TYPE_2__ pdo_sqlite_db_handle ;
struct TYPE_9__ {int alloc_own_columns; int max_escaped_char_length; int /*<<< orphan*/ * methods; int /*<<< orphan*/  data_source; TYPE_2__* driver_data; int /*<<< orphan*/  is_persistent; } ;
typedef  TYPE_3__ pdo_dbh_t ;

/* Variables and functions */
 int /*<<< orphan*/  PDO_ATTR_TIMEOUT ; 
 int /*<<< orphan*/  PDO_SQLITE_ATTR_OPEN_FLAGS ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ ) ; 
 int SQLITE_OK ; 
 int SQLITE_OPEN_CREATE ; 
 int SQLITE_OPEN_READWRITE ; 
 int /*<<< orphan*/  authorizer ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  open_basedir ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_2__* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sqlite_methods ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(pdo_dbh_t *dbh, zval *driver_options) /* {{{ */
{
	pdo_sqlite_db_handle *H;
	int i, ret = 0;
	zend_long timeout = 60, flags;
	char *filename;

	H = FUNC5(1, sizeof(pdo_sqlite_db_handle), dbh->is_persistent);

	H->einfo.errcode = 0;
	H->einfo.errmsg = NULL;
	dbh->driver_data = H;

	filename = FUNC2(dbh->data_source);

	if (!filename) {
		FUNC10(FUNC6(), 0,
			"open_basedir prohibits opening %s",
			dbh->data_source);
		goto cleanup;
	}

	flags = FUNC3(driver_options, PDO_SQLITE_ATTR_OPEN_FLAGS, SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE);

	i = FUNC8(filename, &H->db, flags, NULL);

	FUNC1(filename);

	if (i != SQLITE_OK) {
		FUNC4(dbh);
		goto cleanup;
	}

	if (FUNC0(open_basedir) && *FUNC0(open_basedir)) {
		FUNC9(H->db, authorizer, NULL);
	}

	if (driver_options) {
		timeout = FUNC3(driver_options, PDO_ATTR_TIMEOUT, timeout);
	}
	FUNC7(H->db, timeout * 1000);

	dbh->alloc_own_columns = 1;
	dbh->max_escaped_char_length = 2;

	ret = 1;

cleanup:
	dbh->methods = &sqlite_methods;

	return ret;
}