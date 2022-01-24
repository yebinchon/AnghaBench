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
typedef  void* zend_long ;
struct TYPE_6__ {int column_count; void* row_count; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {int /*<<< orphan*/ * result; int /*<<< orphan*/  fields; TYPE_3__* H; } ;
typedef  TYPE_2__ pdo_mysql_stmt ;
struct TYPE_8__ {int /*<<< orphan*/  server; int /*<<< orphan*/  buffered; } ;
typedef  TYPE_3__ pdo_mysql_db_handle ;
typedef  scalar_t__ my_ulonglong ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(pdo_stmt_t *stmt) /* {{{ */
{
	pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;
	pdo_mysql_db_handle *H = S->H;
	my_ulonglong row_count;
	FUNC0("pdo_mysql_fill_stmt_from_result");

	row_count = FUNC2(H->server);
	if (row_count == (my_ulonglong)-1) {
		/* we either have a query that returned a result set or an error occurred
		   lets see if we have access to a result set */
		if (!H->buffered) {
			S->result = FUNC7(H->server);
		} else {
			S->result = FUNC6(H->server);
		}
		if (NULL == S->result) {
			FUNC8(stmt);
			FUNC1(0);
		}

		stmt->row_count = (zend_long) FUNC5(S->result);
		stmt->column_count = (int) FUNC4(S->result);
		S->fields = FUNC3(S->result);
	} else {
		/* this was a DML or DDL query (INSERT, UPDATE, DELETE, ... */
		stmt->row_count = (zend_long) row_count;
	}

	FUNC1(1);
}