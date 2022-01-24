#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  size_t zend_long ;
struct TYPE_8__ {size_t column_count; scalar_t__ driver_data; } ;
typedef  TYPE_3__ pdo_stmt_t ;
struct TYPE_9__ {TYPE_2__* H; TYPE_1__* cols; int /*<<< orphan*/  result; } ;
typedef  TYPE_4__ pdo_pgsql_stmt ;
struct TYPE_7__ {int /*<<< orphan*/  server; } ;
struct TYPE_6__ {int pgsql_type; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  ExecStatusType ;

/* Variables and functions */
 char* BOOLLABEL ; 
#define  BOOLOID 136 
 char* BYTEALABEL ; 
#define  BYTEAOID 135 
 char* DATELABEL ; 
#define  DATEOID 134 
 int FAILURE ; 
 char* INT2LABEL ; 
#define  INT2OID 133 
 char* INT4LABEL ; 
#define  INT4OID 132 
 char* INT8LABEL ; 
#define  INT8OID 131 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* TEXTLABEL ; 
#define  TEXTOID 130 
 char* TIMESTAMPLABEL ; 
#define  TIMESTAMPOID 129 
 char* VARCHARLABEL ; 
#define  VARCHAROID 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char**,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC12(pdo_stmt_t *stmt, zend_long colno, zval *return_value)
{
	pdo_pgsql_stmt *S = (pdo_pgsql_stmt*)stmt->driver_data;
	PGresult *res;
	char *q=NULL;
	ExecStatusType status;
	Oid table_oid;
	char *table_name=NULL;

	if (!S->result) {
		return FAILURE;
	}

	if (colno >= stmt->column_count) {
		return FAILURE;
	}

	FUNC8(return_value);
	FUNC6(return_value, "pgsql:oid", S->cols[colno].pgsql_type);

	table_oid = FUNC2(S->result, colno);
	FUNC6(return_value, "pgsql:table_oid", table_oid);
	table_name = FUNC10(table_oid, S->H->server);
	if (table_name) {
		FUNC7(return_value, "table", table_name);
		FUNC9(table_name);
	}

	switch (S->cols[colno].pgsql_type) {
		case BOOLOID:
			FUNC7(return_value, "native_type", BOOLLABEL);
			break;
		case BYTEAOID:
			FUNC7(return_value, "native_type", BYTEALABEL);
			break;
		case INT8OID:
			FUNC7(return_value, "native_type", INT8LABEL);
			break;
		case INT2OID:
			FUNC7(return_value, "native_type", INT2LABEL);
			break;
		case INT4OID:
			FUNC7(return_value, "native_type", INT4LABEL);
			break;
		case TEXTOID:
			FUNC7(return_value, "native_type", TEXTLABEL);
			break;
		case VARCHAROID:
			FUNC7(return_value, "native_type", VARCHARLABEL);
			break;
		case DATEOID:
			FUNC7(return_value, "native_type", DATELABEL);
			break;
		case TIMESTAMPOID:
			FUNC7(return_value, "native_type", TIMESTAMPLABEL);
			break;
		default:
			/* Fetch metadata from Postgres system catalogue */
			FUNC11(&q, 0, "SELECT TYPNAME FROM PG_TYPE WHERE OID=%u", S->cols[colno].pgsql_type);
			res = FUNC1(S->H->server, q);
			FUNC9(q);
			status = FUNC5(res);
			if (status == PGRES_TUPLES_OK && 1 == FUNC4(res)) {
				FUNC7(return_value, "native_type", FUNC3(res, 0, 0));
			}
			FUNC0(res);
	}
	return 1;
}