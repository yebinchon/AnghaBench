#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_ulong ;
struct TYPE_5__ {int /*<<< orphan*/  dbc; int /*<<< orphan*/  env; } ;
typedef  TYPE_1__ pdo_odbc_db_handle ;
struct TYPE_6__ {char* data_source; int alloc_own_columns; int /*<<< orphan*/ * methods; int /*<<< orphan*/  password; scalar_t__* username; int /*<<< orphan*/  is_persistent; scalar_t__ auto_commit; TYPE_1__* driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;
typedef  int /*<<< orphan*/  dsnbuf ;
typedef  int /*<<< orphan*/  SQLSMALLINT ;
typedef  void* SQLPOINTER ;
typedef  scalar_t__ RETCODE ;

/* Variables and functions */
 int /*<<< orphan*/  PDO_ODBC_ATTR_USE_CURSOR_LIBRARY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SQL_ATTR_AUTOCOMMIT ; 
 int /*<<< orphan*/  SQL_ATTR_CP_MATCH ; 
 int /*<<< orphan*/  SQL_ATTR_ODBC_VERSION ; 
 scalar_t__ SQL_AUTOCOMMIT_OFF ; 
 scalar_t__ SQL_AUTOCOMMIT_ON ; 
 scalar_t__ SQL_CP_OFF ; 
 scalar_t__ SQL_CUR_USE_IF_NEEDED ; 
 int /*<<< orphan*/  SQL_DRIVER_NOPROMPT ; 
 int /*<<< orphan*/  SQL_HANDLE_DBC ; 
 int /*<<< orphan*/  SQL_HANDLE_ENV ; 
 int /*<<< orphan*/  SQL_IS_INTEGER ; 
 int /*<<< orphan*/  SQL_NTS ; 
 int /*<<< orphan*/  SQL_NULL_HANDLE ; 
 int /*<<< orphan*/  SQL_ODBC_CURSORS ; 
 scalar_t__ SQL_OV_ODBC3 ; 
 scalar_t__ SQL_SUCCESS ; 
 scalar_t__ SQL_SUCCESS_WITH_INFO ; 
 int /*<<< orphan*/  odbc_methods ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ pdo_odbc_pool_mode ; 
 scalar_t__ pdo_odbc_pool_on ; 
 TYPE_1__* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char**,int /*<<< orphan*/ ,char*,char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static int FUNC13(pdo_dbh_t *dbh, zval *driver_options) /* {{{ */
{
	pdo_odbc_db_handle *H;
	RETCODE rc;
	int use_direct = 0;
	zend_ulong cursor_lib;

	H = FUNC7(1, sizeof(*H), dbh->is_persistent);

	dbh->driver_data = H;

	FUNC0(SQL_HANDLE_ENV, SQL_NULL_HANDLE, &H->env);
	rc = FUNC4(H->env, SQL_ATTR_ODBC_VERSION, (void*)SQL_OV_ODBC3, 0);

	if (rc != SQL_SUCCESS && rc != SQL_SUCCESS_WITH_INFO) {
		FUNC6("SQLSetEnvAttr: ODBC3");
		goto fail;
	}

#ifdef SQL_ATTR_CONNECTION_POOLING
	if (pdo_odbc_pool_on != SQL_CP_OFF) {
		rc = SQLSetEnvAttr(H->env, SQL_ATTR_CP_MATCH, (void*)pdo_odbc_pool_mode, 0);
		if (rc != SQL_SUCCESS) {
			pdo_odbc_drv_error("SQLSetEnvAttr: SQL_ATTR_CP_MATCH");
			goto fail;
		}
	}
#endif

	rc = FUNC0(SQL_HANDLE_DBC, H->env, &H->dbc);
	if (rc != SQL_SUCCESS && rc != SQL_SUCCESS_WITH_INFO) {
		FUNC6("SQLAllocHandle (DBC)");
		goto fail;
	}

	rc = FUNC3(H->dbc, SQL_ATTR_AUTOCOMMIT,
		(SQLPOINTER)(dbh->auto_commit ? SQL_AUTOCOMMIT_ON : SQL_AUTOCOMMIT_OFF), SQL_IS_INTEGER);
	if (rc != SQL_SUCCESS) {
		FUNC6("SQLSetConnectAttr AUTOCOMMIT");
		goto fail;
	}

	/* set up the cursor library, if needed, or if configured explicitly */
	cursor_lib = FUNC5(driver_options, PDO_ODBC_ATTR_USE_CURSOR_LIBRARY, SQL_CUR_USE_IF_NEEDED);
	rc = FUNC3(H->dbc, SQL_ODBC_CURSORS, (void*)cursor_lib, SQL_IS_INTEGER);
	if (rc != SQL_SUCCESS && cursor_lib != SQL_CUR_USE_IF_NEEDED) {
		FUNC6("SQLSetConnectAttr SQL_ODBC_CURSORS");
		goto fail;
	}

	if (FUNC10(dbh->data_source, ';')) {
		char dsnbuf[1024];
		SQLSMALLINT dsnbuflen;

		use_direct = 1;

		/* Force UID and PWD to be set in the DSN */
		if (dbh->username && *dbh->username && !FUNC12(dbh->data_source, "uid")
				&& !FUNC12(dbh->data_source, "UID")) {
			char *dsn;
			FUNC9(&dsn, 0, "%s;UID=%s;PWD=%s", dbh->data_source, dbh->username, dbh->password);
			FUNC8((char*)dbh->data_source, dbh->is_persistent);
			dbh->data_source = dsn;
		}

		rc = FUNC2(H->dbc, NULL, (char*)dbh->data_source, FUNC11(dbh->data_source),
				dsnbuf, sizeof(dsnbuf)-1, &dsnbuflen, SQL_DRIVER_NOPROMPT);
	}
	if (!use_direct) {
		rc = FUNC1(H->dbc, (char*)dbh->data_source, SQL_NTS, dbh->username, SQL_NTS, dbh->password, SQL_NTS);
	}

	if (rc != SQL_SUCCESS && rc != SQL_SUCCESS_WITH_INFO) {
		FUNC6(use_direct ? "SQLDriverConnect" : "SQLConnect");
		goto fail;
	}

	/* TODO: if we want to play nicely, we should check to see if the driver really supports ODBC v3 or not */

	dbh->methods = &odbc_methods;
	dbh->alloc_own_columns = 1;

	return 1;

fail:
	dbh->methods = &odbc_methods;
	return 0;
}