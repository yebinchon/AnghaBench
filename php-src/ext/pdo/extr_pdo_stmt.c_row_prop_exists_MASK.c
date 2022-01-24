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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  scalar_t__ zend_long ;
struct TYPE_6__ {scalar_t__ column_count; TYPE_1__* columns; } ;
typedef  TYPE_2__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_2__* stmt; } ;
typedef  TYPE_3__ pdo_row_t ;
struct TYPE_5__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 scalar_t__ IS_LONG ; 
 scalar_t__ IS_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(zend_object *object, zend_string *name, int check_empty, void **cache_slot)
{
	pdo_row_t *row = (pdo_row_t *)object;
	pdo_stmt_t *stmt = row->stmt;
	int colno = -1;
	zend_long lval;

	if (stmt) {
		if (FUNC5(FUNC1(name), FUNC0(name), &lval, NULL, 0, NULL) == IS_LONG)	{
			return lval >=0 && lval < stmt->column_count;
		}

		/* TODO: replace this with a hash of available column names to column
		 * numbers */
		for (colno = 0; colno < stmt->column_count; colno++) {
			if (FUNC0(stmt->columns[colno].name) == FUNC0(name) &&
			    FUNC6(FUNC1(stmt->columns[colno].name), FUNC1(name), FUNC0(name)) == 0) {
					int res;
					zval val;

					FUNC3(stmt, &val, colno, NULL);
					res = check_empty ? FUNC4(&val) : FUNC2(val) != IS_NULL;
					FUNC7(&val);

					return res;
			}
		}
	}

	return 0;
}