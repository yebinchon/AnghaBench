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
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_ulong ;
struct pdo_bound_param_data {int /*<<< orphan*/  parameter; scalar_t__ driver_data; } ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_6__ {int row_count; int column_count; scalar_t__ executed; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {char* convbuf; scalar_t__ going_long; int /*<<< orphan*/  cols; int /*<<< orphan*/  stmt; } ;
typedef  TYPE_2__ pdo_odbc_stmt ;
struct TYPE_8__ {int /*<<< orphan*/  is_unicode; } ;
typedef  TYPE_3__ pdo_odbc_param ;
typedef  int /*<<< orphan*/  pdo_odbc_column ;
typedef  scalar_t__ SQLSMALLINT ;
typedef  int /*<<< orphan*/  SQLPOINTER ;
typedef  int SQLLEN ;
typedef  int RETCODE ;

/* Variables and functions */
 scalar_t__ IS_RESOURCE ; 
#define  PDO_ODBC_CONV_FAIL 133 
#define  PDO_ODBC_CONV_NOT_REQUIRED 132 
#define  PDO_ODBC_CONV_OK 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int SQL_NEED_DATA ; 
#define  SQL_NO_DATA_FOUND 130 
#define  SQL_SUCCESS 129 
#define  SQL_SUCCESS_WITH_INFO 128 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC19(pdo_stmt_t *stmt)
{
	RETCODE rc;
	pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;
	char *buf = NULL;
	SQLLEN row_count = -1;

	if (stmt->executed) {
		FUNC0(S->stmt);
	}

	rc = FUNC1(S->stmt);

	while (rc == SQL_NEED_DATA) {
		struct pdo_bound_param_data *param;

		rc = FUNC3(S->stmt, (SQLPOINTER*)&param);
		if (rc == SQL_NEED_DATA) {
			php_stream *stm;
			int len;
			pdo_odbc_param *P;
			zval *parameter;

			P = (pdo_odbc_param*)param->driver_data;
			if (FUNC6(param->parameter)) {
				parameter = FUNC7(param->parameter);
			} else {
				parameter = &param->parameter;
			}
			if (FUNC10(parameter) != IS_RESOURCE) {
				/* they passed in a string */
				zend_ulong ulen;
				FUNC11(parameter);

				switch (FUNC16(stmt, P->is_unicode,
							FUNC9(parameter),
							FUNC8(parameter),
							&ulen)) {
					case PDO_ODBC_CONV_NOT_REQUIRED:
						FUNC4(S->stmt, FUNC9(parameter),
							FUNC8(parameter));
						break;
					case PDO_ODBC_CONV_OK:
						FUNC4(S->stmt, S->convbuf, ulen);
						break;
					case PDO_ODBC_CONV_FAIL:
						FUNC15("error converting input string");
						FUNC0(S->stmt);
						if (buf) {
							FUNC13(buf);
						}
						return 0;
				}
				continue;
			}

			/* we assume that LOBs are binary and don't need charset
			 * conversion */

			FUNC17(stm, parameter);
			if (!stm) {
				/* shouldn't happen either */
				FUNC15("input LOB is no longer a stream");
				FUNC0(S->stmt);
				if (buf) {
					FUNC13(buf);
				}
				return 0;
			}

			/* now suck data from the stream and stick it into the database */
			if (buf == NULL) {
				buf = FUNC14(8192);
			}

			do {
				len = FUNC18(stm, buf, 8192);
				if (len == 0) {
					break;
				}
				FUNC4(S->stmt, buf, len);
			} while (1);
		}
	}

	if (buf) {
		FUNC13(buf);
	}

	switch (rc) {
		case SQL_SUCCESS:
			break;
		case SQL_NO_DATA_FOUND:
		case SQL_SUCCESS_WITH_INFO:
			FUNC15("SQLExecute");
			break;

		default:
			FUNC15("SQLExecute");
			return 0;
	}

	FUNC5(S->stmt, &row_count);
	stmt->row_count = row_count;

	if (!stmt->executed) {
		/* do first-time-only definition of bind/mapping stuff */
		SQLSMALLINT colcount;

		/* how many columns do we have ? */
		FUNC2(S->stmt, &colcount);

		stmt->column_count = (int)colcount;
		S->cols = FUNC12(colcount, sizeof(pdo_odbc_column));
		S->going_long = 0;
	}

	return 1;
}