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
struct pdo_column_data {int /*<<< orphan*/  param_type; int /*<<< orphan*/  maxlen; int /*<<< orphan*/  precision; scalar_t__ name; } ;
struct TYPE_8__ {int column_count; struct pdo_column_data* columns; scalar_t__ driver_data; } ;
typedef  TYPE_3__ pdo_stmt_t ;
struct TYPE_9__ {scalar_t__ stmt; TYPE_2__* fields; TYPE_1__* H; int /*<<< orphan*/  result; } ;
typedef  TYPE_4__ pdo_mysql_stmt ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  decimals; int /*<<< orphan*/  name_length; int /*<<< orphan*/  name; int /*<<< orphan*/  table; } ;
struct TYPE_6__ {scalar_t__ fetch_table_names; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PDO_PARAM_STR ; 
 int /*<<< orphan*/  PDO_PARAM_ZVAL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(pdo_stmt_t *stmt, int colno) /* {{{ */
{
	pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;
	struct pdo_column_data *cols = stmt->columns;
	int i;

	FUNC0("pdo_mysql_stmt_describe");
	FUNC1("stmt=%p", S->stmt);
	if (!S->result) {
		FUNC2(0);
	}

	if (colno >= stmt->column_count) {
		/* error invalid column */
		FUNC2(0);
	}

	/* fetch all on demand, this seems easiest
	** if we've been here before bail out
	*/
	if (cols[0].name) {
		FUNC2(1);
	}
	for (i = 0; i < stmt->column_count; i++) {

		if (S->H->fetch_table_names) {
			cols[i].name = FUNC3(0, "%s.%s", S->fields[i].table, S->fields[i].name);
		} else {
			cols[i].name = FUNC4(S->fields[i].name, S->fields[i].name_length, 0);
		}

		cols[i].precision = S->fields[i].decimals;
		cols[i].maxlen = S->fields[i].length;

#ifdef PDO_USE_MYSQLND
		if (S->stmt) {
			cols[i].param_type = PDO_PARAM_ZVAL;
		} else
#endif
		{
			cols[i].param_type = PDO_PARAM_STR;
		}
	}
	FUNC2(1);
}