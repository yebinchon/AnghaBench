#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  active_query_stringlen; int /*<<< orphan*/  active_query_string; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_9__ {int /*<<< orphan*/ * result; scalar_t__ stmt; TYPE_3__* H; } ;
typedef  TYPE_2__ pdo_mysql_stmt ;
struct TYPE_10__ {int /*<<< orphan*/  server; } ;
typedef  TYPE_3__ pdo_mysql_db_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(pdo_stmt_t *stmt) /* {{{ */
{
	pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;
	pdo_mysql_db_handle *H = S->H;
	FUNC0("pdo_mysql_stmt_execute");
	FUNC1("stmt=%p", S->stmt);

	if (S->stmt) {
		FUNC2(FUNC7(stmt));
	}

	/* ensure that we free any previous unfetched results */
	if (S->result) {
		FUNC3(S->result);
		S->result = NULL;
	}

	if (FUNC4(H->server, stmt->active_query_string, stmt->active_query_stringlen) != 0) {
		FUNC5(stmt);
		FUNC2(0);
	}

	FUNC2(FUNC6(stmt));
}