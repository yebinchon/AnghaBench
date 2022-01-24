#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_ulong ;
struct TYPE_9__ {int /*<<< orphan*/  supports_placeholders; int /*<<< orphan*/  error_code; int /*<<< orphan*/ * methods; TYPE_2__* driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_10__ {int num_params; int /*<<< orphan*/  max_length; void* in_length; void* in_null; int /*<<< orphan*/ * params; scalar_t__ params_given; int /*<<< orphan*/  stmt; TYPE_3__* H; } ;
typedef  TYPE_2__ pdo_mysql_stmt ;
struct TYPE_11__ {int /*<<< orphan*/  server; scalar_t__ emulate_prepare; } ;
typedef  TYPE_3__ pdo_mysql_db_handle ;
struct TYPE_12__ {int alloc_own_columns; int /*<<< orphan*/  error_code; scalar_t__ driver_data; } ;
typedef  TYPE_4__ pdo_dbh_t ;
typedef  int /*<<< orphan*/  my_bool ;
typedef  int /*<<< orphan*/  MYSQL_BIND ;

/* Variables and functions */
 int /*<<< orphan*/  PDO_ATTR_MAX_COLUMN_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PDO_PLACEHOLDER_NONE ; 
 int /*<<< orphan*/  PDO_PLACEHOLDER_POSITIONAL ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mysql_stmt_methods ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_1__*,char*,size_t,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(pdo_dbh_t *dbh, const char *sql, size_t sql_len, pdo_stmt_t *stmt, zval *driver_options)
{
	pdo_mysql_db_handle *H = (pdo_mysql_db_handle *)dbh->driver_data;
	pdo_mysql_stmt *S = FUNC3(1, sizeof(pdo_mysql_stmt));
	char *nsql = NULL;
	size_t nsql_len = 0;
	int ret;
	int server_version;

	FUNC0("mysql_handle_preparer");
	FUNC1("dbh=%p", dbh);
	FUNC1("sql=%.*s", (int)sql_len, sql);

	S->H = H;
	stmt->driver_data = S;
	stmt->methods = &mysql_stmt_methods;

	if (H->emulate_prepare) {
		goto end;
	}

	server_version = FUNC6(H->server);
	if (server_version < 40100) {
		goto fallback;
	}
	stmt->supports_placeholders = PDO_PLACEHOLDER_POSITIONAL;
	ret = FUNC12(stmt, (char*)sql, sql_len, &nsql, &nsql_len);

	if (ret == 1) {
		/* query was rewritten */
		sql = nsql;
		sql_len = nsql_len;
	} else if (ret == -1) {
		/* failed to parse */
		FUNC13(dbh->error_code, stmt->error_code);
		FUNC2(0);
	}

	if (!(S->stmt = FUNC7(H->server))) {
		FUNC11(dbh);
		if (nsql) {
			FUNC4(nsql);
		}
		FUNC2(0);
	}

	if (FUNC9(S->stmt, sql, sql_len)) {
		/* TODO: might need to pull statement specific info here? */
		/* if the query isn't supported by the protocol, fallback to emulation */
		if (FUNC5(H->server) == 1295) {
			if (nsql) {
				FUNC4(nsql);
			}
			goto fallback;
		}
		FUNC11(dbh);
		if (nsql) {
			FUNC4(nsql);
		}
		FUNC2(0);
	}
	if (nsql) {
		FUNC4(nsql);
	}

	S->num_params = FUNC8(S->stmt);

	if (S->num_params) {
		S->params_given = 0;
#if defined(PDO_USE_MYSQLND)
		S->params = NULL;
#else
		S->params = FUNC3(S->num_params, sizeof(MYSQL_BIND));
		S->in_null = FUNC3(S->num_params, sizeof(my_bool));
		S->in_length = FUNC3(S->num_params, sizeof(zend_ulong));
#endif
	}
	dbh->alloc_own_columns = 1;

	S->max_length = FUNC10(driver_options, PDO_ATTR_MAX_COLUMN_LEN, 0);

	FUNC2(1);

fallback:
end:
	stmt->supports_placeholders = PDO_PLACEHOLDER_NONE;

	FUNC2(1);
}