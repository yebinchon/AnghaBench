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
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_1__* H; scalar_t__ stmt; int /*<<< orphan*/ * result; } ;
typedef  TYPE_3__ pdo_mysql_stmt ;
struct TYPE_5__ {int /*<<< orphan*/  server; } ;
typedef  int /*<<< orphan*/  MYSQL_RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(pdo_stmt_t *stmt) /* {{{ */
{
	pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;

	FUNC0("pdo_mysql_stmt_cursor_closer");
	FUNC1("stmt=%p", S->stmt);
	if (S->result) {
		FUNC3(S->result);
		S->result = NULL;
	}
	if (S->stmt) {
		int retval;
		retval = FUNC6(S->stmt);
		FUNC2(retval ? 0 : 1);
	}

	while (FUNC4(S->H->server)) {
		MYSQL_RES *res;
		if (FUNC5(S->H->server) != 0) {
			break;
		}
		res = FUNC7(S->H->server);
		if (res) {
			FUNC3(res);
		}
	}
	FUNC2(1);
}