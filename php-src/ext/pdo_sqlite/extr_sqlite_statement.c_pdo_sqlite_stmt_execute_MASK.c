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
struct TYPE_8__ {int /*<<< orphan*/  row_count; scalar_t__ executed; scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_stmt_t ;
struct TYPE_9__ {int done; int pre_fetched; int /*<<< orphan*/  stmt; TYPE_1__* H; } ;
typedef  TYPE_3__ pdo_sqlite_stmt ;
struct TYPE_7__ {int /*<<< orphan*/  db; } ;

/* Variables and functions */
#define  SQLITE_BUSY 132 
#define  SQLITE_DONE 131 
#define  SQLITE_ERROR 130 
#define  SQLITE_MISUSE 129 
#define  SQLITE_ROW 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(pdo_stmt_t *stmt)
{
	pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;

	if (stmt->executed && !S->done) {
		FUNC5(S->stmt);
	}

	S->done = 0;
	switch (FUNC6(S->stmt)) {
		case SQLITE_ROW:
			S->pre_fetched = 1;
			FUNC1(stmt, FUNC4(S->stmt));
			return 1;

		case SQLITE_DONE:
			FUNC1(stmt, FUNC3(S->stmt));
			stmt->row_count = FUNC2(S->H->db);
			FUNC5(S->stmt);
			S->done = 1;
			return 1;

		case SQLITE_ERROR:
			FUNC5(S->stmt);
		case SQLITE_MISUSE:
		case SQLITE_BUSY:
		default:
			FUNC0(stmt);
			return 0;
	}
}