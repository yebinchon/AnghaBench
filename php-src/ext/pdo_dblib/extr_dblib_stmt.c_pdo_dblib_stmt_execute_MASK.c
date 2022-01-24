#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  column_count; int /*<<< orphan*/  row_count; int /*<<< orphan*/  active_query_string; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_8__ {int /*<<< orphan*/  err; TYPE_3__* H; } ;
typedef  TYPE_2__ pdo_dblib_stmt ;
struct TYPE_9__ {int /*<<< orphan*/  link; } ;
typedef  TYPE_3__ pdo_dblib_db_handle ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(pdo_stmt_t *stmt)
{
	pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
	pdo_dblib_db_handle *H = S->H;

	FUNC3(H->link, (BYTE*) &S->err);

	FUNC5(stmt);

	if (FAIL == FUNC1(H->link, stmt->active_query_string)) {
		return 0;
	}

	if (FAIL == FUNC4(H->link)) {
		return 0;
	}

	FUNC6(stmt);

	stmt->row_count = FUNC0(H->link);
	stmt->column_count = FUNC2(H->link);

	return 1;
}