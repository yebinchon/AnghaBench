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
typedef  int /*<<< orphan*/  zend_object ;
typedef  scalar_t__ zend_long ;
struct TYPE_6__ {scalar_t__ column_count; TYPE_1__* columns; } ;
typedef  TYPE_2__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_2__* stmt; } ;
typedef  TYPE_3__ pdo_row_t ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ IS_LONG ; 
 scalar_t__ IS_NULL ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(zend_object *object, zval *member, int check_empty)
{
	pdo_row_t *row = (pdo_row_t *)object;
	pdo_stmt_t *stmt = row->stmt;
	int colno = -1;
	zend_long lval;

	if (stmt) {
		if (FUNC6(member) == IS_LONG) {
			return FUNC2(member) >= 0 && FUNC2(member) < stmt->column_count;
		} else if (FUNC6(member) == IS_STRING) {
			if (FUNC9(FUNC4(member), FUNC3(member), &lval, NULL, 0, NULL) == IS_LONG)	{
				return lval >=0 && lval < stmt->column_count;
			}
		} else {
			if (!FUNC11(member)) {
				return 0;
			}
		}

		/* TODO: replace this with a hash of available column names to column
		 * numbers */
		for (colno = 0; colno < stmt->column_count; colno++) {
			if (FUNC0(stmt->columns[colno].name) == FUNC3(member) &&
			    FUNC10(FUNC1(stmt->columns[colno].name), FUNC4(member), FUNC3(member)) == 0) {
					int res;
					zval val;

					FUNC7(stmt, &val, colno, NULL);
					res = check_empty ? FUNC8(&val) : FUNC5(val) != IS_NULL;
					FUNC12(&val);

					return res;
			}
		}
	}

	return 0;
}