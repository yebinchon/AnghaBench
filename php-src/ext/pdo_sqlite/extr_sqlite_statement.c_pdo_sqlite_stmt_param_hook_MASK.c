#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct pdo_bound_param_data {int paramno; int /*<<< orphan*/  parameter; int /*<<< orphan*/  param_type; int /*<<< orphan*/  name; int /*<<< orphan*/  is_param; } ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_6__ {int /*<<< orphan*/  dbh; int /*<<< orphan*/  executed; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {int done; int /*<<< orphan*/  stmt; } ;
typedef  TYPE_2__ pdo_sqlite_stmt ;
typedef  enum pdo_param_event { ____Placeholder_pdo_param_event } pdo_param_event ;

/* Variables and functions */
 int /*<<< orphan*/  IS_NULL ; 
 int /*<<< orphan*/  IS_RESOURCE ; 
#define  PDO_PARAM_BOOL 134 
#define  PDO_PARAM_EVT_EXEC_PRE 133 
#define  PDO_PARAM_INT 132 
#define  PDO_PARAM_LOB 131 
#define  PDO_PARAM_NULL 130 
#define  PDO_PARAM_STMT 129 
#define  PDO_PARAM_STR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHP_STREAM_COPY_ALL ; 
 int /*<<< orphan*/  SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(pdo_stmt_t *stmt, struct pdo_bound_param_data *param,
		enum pdo_param_event event_type)
{
	pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;
	zval *parameter;

	switch (event_type) {
		case PDO_PARAM_EVT_EXEC_PRE:
			if (stmt->executed && !S->done) {
				FUNC21(S->stmt);
				S->done = 1;
			}

			if (param->is_param) {

				if (param->paramno == -1) {
					param->paramno = FUNC19(S->stmt, FUNC2(param->name)) - 1;
				}

				switch (FUNC0(param->param_type)) {
					case PDO_PARAM_STMT:
						return 0;

					case PDO_PARAM_NULL:
						if (FUNC18(S->stmt, param->paramno + 1) == SQLITE_OK) {
							return 1;
						}
						FUNC12(stmt);
						return 0;

					case PDO_PARAM_INT:
					case PDO_PARAM_BOOL:
						if (FUNC4(param->parameter)) {
							parameter = FUNC6(param->parameter);
						} else {
							parameter = &param->parameter;
						}
						if (FUNC9(parameter) == IS_NULL) {
							if (FUNC18(S->stmt, param->paramno + 1) == SQLITE_OK) {
								return 1;
							}
						} else {
							FUNC10(parameter);
#if ZEND_LONG_MAX > 2147483647
							if (SQLITE_OK == sqlite3_bind_int64(S->stmt, param->paramno + 1, Z_LVAL_P(parameter))) {
								return 1;
							}
#else
							if (SQLITE_OK == FUNC16(S->stmt, param->paramno + 1, FUNC5(parameter))) {
								return 1;
							}
#endif
						}
						FUNC12(stmt);
						return 0;

					case PDO_PARAM_LOB:
						if (FUNC4(param->parameter)) {
							parameter = FUNC6(param->parameter);
						} else {
							parameter = &param->parameter;
						}
						if (FUNC9(parameter) == IS_RESOURCE) {
							php_stream *stm = NULL;
							FUNC14(stm, parameter);
							if (stm) {
								zend_string *mem = FUNC13(stm, PHP_STREAM_COPY_ALL, 0);
								FUNC23(parameter);
								FUNC3(parameter, mem ? mem : FUNC1());
							} else {
								FUNC11(stmt->dbh, stmt, "HY105", "Expected a stream resource");
								return 0;
							}
						} else if (FUNC9(parameter) == IS_NULL) {
							if (FUNC18(S->stmt, param->paramno + 1) == SQLITE_OK) {
								return 1;
							}
							FUNC12(stmt);
							return 0;
						} else {
							if (!FUNC22(parameter)) {
								return 0;
							}
						}

						if (SQLITE_OK == FUNC15(S->stmt, param->paramno + 1,
								FUNC8(parameter),
								FUNC7(parameter),
								SQLITE_STATIC)) {
							return 1;
						}
						return 0;

					case PDO_PARAM_STR:
					default:
						if (FUNC4(param->parameter)) {
							parameter = FUNC6(param->parameter);
						} else {
							parameter = &param->parameter;
						}
						if (FUNC9(parameter) == IS_NULL) {
							if (FUNC18(S->stmt, param->paramno + 1) == SQLITE_OK) {
								return 1;
							}
						} else {
							if (!FUNC22(parameter)) {
								return 0;
							}
							if (SQLITE_OK == FUNC20(S->stmt, param->paramno + 1,
									FUNC8(parameter),
									FUNC7(parameter),
									SQLITE_STATIC)) {
								return 1;
							}
						}
						FUNC12(stmt);
						return 0;
				}
			}
			break;

		default:
			;
	}
	return 1;
}