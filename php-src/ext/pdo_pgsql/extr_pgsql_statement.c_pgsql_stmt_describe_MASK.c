#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_long ;
struct pdo_column_data {void* param_type; int /*<<< orphan*/  name; int /*<<< orphan*/  precision; int /*<<< orphan*/  maxlen; } ;
struct pdo_bound_param_data {int /*<<< orphan*/  param_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  bound_columns; struct pdo_column_data* columns; scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_1__* cols; int /*<<< orphan*/  result; } ;
typedef  TYPE_3__ pdo_pgsql_stmt ;
struct TYPE_5__ {int pgsql_type; } ;

/* Variables and functions */
#define  BOOLOID 133 
#define  BYTEAOID 132 
#define  INT2OID 131 
#define  INT4OID 130 
#define  INT8OID 129 
#define  OIDOID 128 
 void* PDO_PARAM_BOOL ; 
 void* PDO_PARAM_INT ; 
 void* PDO_PARAM_LOB ; 
 void* PDO_PARAM_STR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct pdo_bound_param_data* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pdo_bound_param_data* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(pdo_stmt_t *stmt, int colno)
{
	pdo_pgsql_stmt *S = (pdo_pgsql_stmt*)stmt->driver_data;
	struct pdo_column_data *cols = stmt->columns;
	struct pdo_bound_param_data *param;
	char *str;

	if (!S->result) {
		return 0;
	}

	str = FUNC2(S->result, colno);
	cols[colno].name = FUNC8(str, FUNC5(str), 0);
	cols[colno].maxlen = FUNC3(S->result, colno);
	cols[colno].precision = FUNC1(S->result, colno);
	S->cols[colno].pgsql_type = FUNC4(S->result, colno);

	switch (S->cols[colno].pgsql_type) {

		case BOOLOID:
			cols[colno].param_type = PDO_PARAM_BOOL;
			break;

		case OIDOID:
			/* did the user bind the column as a LOB ? */
			if (stmt->bound_columns && (
					(param = FUNC7(stmt->bound_columns, colno)) != NULL ||
					(param = FUNC6(stmt->bound_columns, cols[colno].name)) != NULL)) {

				if (FUNC0(param->param_type) == PDO_PARAM_LOB) {
					cols[colno].param_type = PDO_PARAM_LOB;
					break;
				}
			}
			cols[colno].param_type = PDO_PARAM_INT;
			break;

		case INT2OID:
		case INT4OID:
			cols[colno].param_type = PDO_PARAM_INT;
			break;

		case INT8OID:
			if (sizeof(zend_long)>=8) {
				cols[colno].param_type = PDO_PARAM_INT;
			} else {
				cols[colno].param_type = PDO_PARAM_STR;
			}
			break;

		case BYTEAOID:
			cols[colno].param_type = PDO_PARAM_LOB;
			break;

		default:
			cols[colno].param_type = PDO_PARAM_STR;
	}

	return 1;
}