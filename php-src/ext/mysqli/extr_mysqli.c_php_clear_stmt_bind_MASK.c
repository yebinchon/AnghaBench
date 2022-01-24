#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* query; int /*<<< orphan*/  link_handle; int /*<<< orphan*/  result; int /*<<< orphan*/  param; scalar_t__ stmt; } ;
typedef  TYPE_1__ MY_STMT ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FETCH_RESULT ; 
 int /*<<< orphan*/  FETCH_SIMPLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(MY_STMT *stmt)
{
	if (stmt->stmt) {
		if (FUNC2(stmt->stmt, TRUE)) {
			FUNC3(NULL, E_WARNING, "Error occurred while closing statement");
			return;
		}
	}

	/*
	  mysqlnd keeps track of the binding and has freed its
	  structures in stmt_close() above
	*/
#ifndef MYSQLI_USE_MYSQLND
	/* Clean param bind */
	FUNC4(stmt->param, FETCH_SIMPLE);
	/* Clean output bind */
	FUNC4(stmt->result, FETCH_RESULT);

	if (!FUNC0(stmt->link_handle)) {
		FUNC5(&stmt->link_handle);
	}
#endif
	if (stmt->query) {
		FUNC1(stmt->query);
	}
	FUNC1(stmt);
}