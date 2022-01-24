#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_11__ {int column_count; int /*<<< orphan*/  error_code; scalar_t__ driver_data; } ;
typedef  TYPE_4__ pdo_stmt_t ;
struct TYPE_12__ {char** current_data; size_t* out_length; size_t* current_lengths; TYPE_3__* bound_result; scalar_t__* out_null; TYPE_7__* stmt; int /*<<< orphan*/  result; } ;
typedef  TYPE_5__ pdo_mysql_stmt ;
struct TYPE_13__ {TYPE_2__* data; } ;
struct TYPE_10__ {char* buffer; size_t buffer_length; } ;
struct TYPE_9__ {TYPE_1__* result_bind; } ;
struct TYPE_8__ {int /*<<< orphan*/  zv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(pdo_stmt_t *stmt, int colno, char **ptr, size_t *len, int *caller_frees) /* {{{ */
{
	pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;

	FUNC0("pdo_mysql_stmt_get_col");
	FUNC1("stmt=%p", S->stmt);
	if (!S->result) {
		FUNC2(0);
	}

	/* With mysqlnd data is stored inside mysqlnd, not S->current_data */
	if (!S->stmt) {
		if (S->current_data == NULL || !S->result) {
			FUNC2(0);
		}
	}

	if (colno >= stmt->column_count) {
		/* error invalid column */
		FUNC2(0);
	}
#if PDO_USE_MYSQLND
	if (S->stmt) {
		Z_TRY_ADDREF(S->stmt->data->result_bind[colno].zv);
		*ptr = (char*)&S->stmt->data->result_bind[colno].zv;
		*len = sizeof(zval);
		PDO_DBG_RETURN(1);
	}
#else
	if (S->stmt) {
		if (S->out_null[colno]) {
			*ptr = NULL;
			*len = 0;
			FUNC2(1);
		}
		*ptr = S->bound_result[colno].buffer;
		if (S->out_length[colno] > S->bound_result[colno].buffer_length) {
			/* mysql lied about the column width */
			FUNC4(stmt->error_code, "01004"); /* truncated */
			S->out_length[colno] = S->bound_result[colno].buffer_length;
			*len = S->out_length[colno];
			FUNC2(0);
		}
		*len = S->out_length[colno];
		FUNC2(1);
	}
#endif
	*ptr = S->current_data[colno];
	*len = S->current_lengths[colno];
	FUNC2(1);
}