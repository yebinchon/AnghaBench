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
typedef  scalar_t__ zend_long ;
struct TYPE_6__ {char* active_query_string; scalar_t__ supports_placeholders; int column_count; scalar_t__ row_count; int /*<<< orphan*/  executed; scalar_t__ bound_params; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {int is_prepared; char* stmt_name; int /*<<< orphan*/ * result; int /*<<< orphan*/ * cols; int /*<<< orphan*/  param_formats; int /*<<< orphan*/  param_lengths; scalar_t__ param_values; int /*<<< orphan*/  param_types; int /*<<< orphan*/  query; scalar_t__ cursor_name; scalar_t__ current_row; TYPE_3__* H; } ;
typedef  TYPE_2__ pdo_pgsql_stmt ;
struct TYPE_8__ {int /*<<< orphan*/  pgoid; int /*<<< orphan*/  server; } ;
typedef  TYPE_3__ pdo_pgsql_db_handle ;
typedef  int /*<<< orphan*/  pdo_pgsql_column ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int ExecStatusType ;

/* Variables and functions */
 scalar_t__ PDO_PLACEHOLDER_NAMED ; 
#define  PGRES_COMMAND_OK 129 
#define  PGRES_TUPLES_OK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,char*) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char**,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 

__attribute__((used)) static int FUNC19(pdo_stmt_t *stmt)
{
	pdo_pgsql_stmt *S = (pdo_pgsql_stmt*)stmt->driver_data;
	pdo_pgsql_db_handle *H = S->H;
	ExecStatusType status;

	/* ensure that we free any previous unfetched results */
	if(S->result) {
		FUNC0(S->result);
		S->result = NULL;
	}

	S->current_row = 0;

	if (S->cursor_name) {
		char *q = NULL;

		if (S->is_prepared) {
			FUNC16(&q, 0, "CLOSE %s", S->cursor_name);
			FUNC0(FUNC2(H->server, q));
			FUNC12(q);
		}

		FUNC16(&q, 0, "DECLARE %s SCROLL CURSOR WITH HOLD FOR %s", S->cursor_name, stmt->active_query_string);
		S->result = FUNC2(H->server, q);
		FUNC12(q);

		/* check if declare failed */
		status = FUNC9(S->result);
		if (status != PGRES_COMMAND_OK && status != PGRES_TUPLES_OK) {
			FUNC13(stmt, status, FUNC14(S->result));
			return 0;
		}
		FUNC0(S->result);

		/* the cursor was declared correctly */
		S->is_prepared = 1;

		/* fetch to be able to get the number of tuples later, but don't advance the cursor pointer */
		FUNC16(&q, 0, "FETCH FORWARD 0 FROM %s", S->cursor_name);
		S->result = FUNC2(H->server, q);
		FUNC12(q);
	} else if (S->stmt_name) {
		/* using a prepared statement */

		if (!S->is_prepared) {
stmt_retry:
			/* we deferred the prepare until now, because we didn't
			 * know anything about the parameter types; now we do */
			S->result = FUNC8(H->server, S->stmt_name, S->query,
						stmt->bound_params ? FUNC18(stmt->bound_params) : 0,
						S->param_types);
			status = FUNC9(S->result);
			switch (status) {
				case PGRES_COMMAND_OK:
				case PGRES_TUPLES_OK:
					/* it worked */
					S->is_prepared = 1;
					FUNC0(S->result);
					break;
				default: {
					char *sqlstate = FUNC14(S->result);
					/* 42P05 means that the prepared statement already existed. this can happen if you use
					 * a connection pooling software line pgpool which doesn't close the db-connection once
					 * php disconnects. if php dies (no chance to run RSHUTDOWN) during execution it has no
					 * chance to DEALLOCATE the prepared statements it has created. so, if we hit a 42P05 we
					 * deallocate it and retry ONCE (thies 2005.12.15)
					 */
					if (sqlstate && !FUNC17(sqlstate, "42P05")) {
						char buf[100]; /* stmt_name == "pdo_crsr_%08x" */
						PGresult *res;
						FUNC15(buf, sizeof(buf), "DEALLOCATE %s", S->stmt_name);
						res = FUNC2(H->server, buf);
						if (res) {
							FUNC0(res);
						}
						goto stmt_retry;
					} else {
						FUNC13(stmt, status, sqlstate);
						return 0;
					}
				}
			}
		}
		S->result = FUNC4(H->server, S->stmt_name,
				stmt->bound_params ?
					FUNC18(stmt->bound_params) :
					0,
				(const char**)S->param_values,
				S->param_lengths,
				S->param_formats,
				0);
	} else if (stmt->supports_placeholders == PDO_PLACEHOLDER_NAMED) {
		/* execute query with parameters */
		S->result = FUNC3(H->server, S->query,
				stmt->bound_params ? FUNC18(stmt->bound_params) : 0,
				S->param_types,
				(const char**)S->param_values,
				S->param_lengths,
				S->param_formats,
				0);
	} else {
		/* execute plain query (with embedded parameters) */
		S->result = FUNC2(H->server, stmt->active_query_string);
	}
	status = FUNC9(S->result);

	if (status != PGRES_COMMAND_OK && status != PGRES_TUPLES_OK) {
		FUNC13(stmt, status, FUNC14(S->result));
		return 0;
	}

	if (!stmt->executed && (!stmt->column_count || S->cols == NULL)) {
		stmt->column_count = (int) FUNC5(S->result);
		S->cols = FUNC11(stmt->column_count, sizeof(pdo_pgsql_column));
	}

	if (status == PGRES_COMMAND_OK) {
		FUNC10(stmt->row_count, FUNC1(S->result));
		H->pgoid = FUNC7(S->result);
	} else {
		stmt->row_count = (zend_long)FUNC6(S->result);
	}

	return 1;
}