#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int column_count; int /*<<< orphan*/  database_object_handle; TYPE_1__* dbh; scalar_t__ driver_data; } ;
typedef  TYPE_4__ pdo_stmt_t ;
struct TYPE_11__ {int /*<<< orphan*/ * errmsg; } ;
struct TYPE_14__ {scalar_t__ current_data; int /*<<< orphan*/ * stmt; TYPE_3__* H; struct TYPE_14__* out_length; struct TYPE_14__* out_null; struct TYPE_14__* bound_result; struct TYPE_14__* in_length; struct TYPE_14__* in_null; struct TYPE_14__* params; TYPE_2__ einfo; int /*<<< orphan*/ * result; } ;
typedef  TYPE_5__ pdo_mysql_stmt ;
struct TYPE_15__ {int /*<<< orphan*/ * object_buckets; } ;
struct TYPE_12__ {int /*<<< orphan*/  server; } ;
struct TYPE_10__ {int /*<<< orphan*/  is_persistent; } ;
typedef  int /*<<< orphan*/  MYSQL_RES ;

/* Variables and functions */
 TYPE_9__ FUNC0 (int /*<<< orphan*/ ) ; 
 int IS_OBJ_FREE_CALLED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  objects_store ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(pdo_stmt_t *stmt) /* {{{ */
{
	pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;

	FUNC3("pdo_mysql_stmt_dtor");
	FUNC4("stmt=%p", S->stmt);
	if (S->result) {
		/* free the resource */
		FUNC11(S->result);
		S->result = NULL;
	}
	if (S->einfo.errmsg) {
		FUNC17(S->einfo.errmsg, stmt->dbh->is_persistent);
		S->einfo.errmsg = NULL;
	}
	if (S->stmt) {
		FUNC16(S->stmt);
		S->stmt = NULL;
	}

#ifndef PDO_USE_MYSQLND
	if (S->params) {
		FUNC9(S->params);
	}
	if (S->in_null) {
		FUNC9(S->in_null);
	}
	if (S->in_length) {
		FUNC9(S->in_length);
	}

	if (S->bound_result)
	{
		int i;
		for (i = 0; i < stmt->column_count; i++) {
			FUNC15(S->bound_result[i]);
		}

		FUNC9(S->bound_result);
		FUNC9(S->out_null);
		FUNC9(S->out_length);
	}
#endif

	if (!FUNC6(stmt->database_object_handle)
		&& FUNC1(FUNC0(objects_store).object_buckets[FUNC8(stmt->database_object_handle)])
		&& (!(FUNC2(FUNC7(stmt->database_object_handle)) & IS_OBJ_FREE_CALLED))) {
		while (FUNC12(S->H->server)) {
			MYSQL_RES *res;
			if (FUNC13(S->H->server) != 0) {
				break;
			}

			res = FUNC14(S->H->server);
			if (res) {
				FUNC11(res);
			}
		}
	}

#if PDO_USE_MYSQLND
	if (!S->stmt && S->current_data) {
		mnd_free(S->current_data);
	}
#endif /* PDO_USE_MYSQLND */

	FUNC9(S);
	FUNC5(1);
}