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
struct TYPE_6__ {int column_count; int /*<<< orphan*/  row_count; int /*<<< orphan*/  dbh; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_3__* H; } ;
typedef  TYPE_2__ pdo_dblib_stmt ;
struct TYPE_8__ {int /*<<< orphan*/  link; scalar_t__ skip_empty_rowsets; } ;
typedef  TYPE_3__ pdo_dblib_db_handle ;
typedef  scalar_t__ RETCODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FAIL ; 
 scalar_t__ NO_MORE_RESULTS ; 
 scalar_t__ SUCCEED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,char*,char*) ; 

__attribute__((used)) static int FUNC4(pdo_stmt_t *stmt)
{
	pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
	pdo_dblib_db_handle *H = S->H;
	RETCODE ret;
	int num_fields;

	do {
		ret = FUNC2(H->link);
		num_fields = FUNC1(H->link);
	} while (H->skip_empty_rowsets && num_fields <= 0 && ret == SUCCEED);


	if (FAIL == ret) {
		FUNC3(stmt->dbh, stmt, "HY000", "PDO_DBLIB: dbresults() returned FAIL");
		return 0;
	}

	if (NO_MORE_RESULTS == ret) {
		return 0;
	}

	if (H->skip_empty_rowsets && num_fields <= 0) {
		return 0;
	}

	stmt->row_count = FUNC0(H->link);
	stmt->column_count = num_fields;

	return 1;
}