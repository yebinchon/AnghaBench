#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int column_count; int /*<<< orphan*/ * driver_data; TYPE_1__* dbh; int /*<<< orphan*/ * bound_params; int /*<<< orphan*/ * bound_columns; } ;
typedef  TYPE_4__ pdo_stmt_t ;
struct TYPE_10__ {int /*<<< orphan*/ * errmsg; } ;
struct TYPE_13__ {int dtype; struct TYPE_13__* cols; struct TYPE_13__* data; TYPE_3__* H; TYPE_2__ einfo; int /*<<< orphan*/ * err; int /*<<< orphan*/ * stmt; } ;
typedef  TYPE_5__ pdo_oci_stmt ;
struct TYPE_11__ {int /*<<< orphan*/  err; int /*<<< orphan*/  svc; int /*<<< orphan*/  env; } ;
struct TYPE_9__ {int /*<<< orphan*/  is_persistent; } ;
typedef  int /*<<< orphan*/  OCILobLocator ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCI_DEFAULT ; 
 int /*<<< orphan*/  OCI_DTYPE_LOB ; 
 int /*<<< orphan*/  OCI_FETCH_NEXT ; 
 int /*<<< orphan*/  OCI_HTYPE_ERROR ; 
 int /*<<< orphan*/  OCI_HTYPE_STMT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  SQLT_BLOB 129 
#define  SQLT_CLOB 128 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(pdo_stmt_t *stmt) /* {{{ */
{
	pdo_oci_stmt *S = (pdo_oci_stmt*)stmt->driver_data;
	HashTable *BC = stmt->bound_columns;
	HashTable *BP = stmt->bound_params;

	int i;

	if (S->stmt) {
		/* cancel server side resources for the statement if we didn't
		 * fetch it all */
		FUNC3(S->stmt, S->err, 0, OCI_FETCH_NEXT, OCI_DEFAULT);

		/* free the handle */
		FUNC2(S->stmt, OCI_HTYPE_STMT);
		S->stmt = NULL;
	}
	if (S->err) {
		FUNC2(S->err, OCI_HTYPE_ERROR);
		S->err = NULL;
	}

	/* need to ensure these go away now */
	if (BC) {
		FUNC7(BC);
		FUNC0(stmt->bound_columns);
		stmt->bound_columns = NULL;
	}

	if (BP) {
		FUNC7(BP);
		FUNC0(stmt->bound_params);
		stmt->bound_params = NULL;
	}

	if (S->einfo.errmsg) {
		FUNC6(S->einfo.errmsg, stmt->dbh->is_persistent);
		S->einfo.errmsg = NULL;
	}

	if (S->cols) {
		for (i = 0; i < stmt->column_count; i++) {
			if (S->cols[i].data) {
				switch (S->cols[i].dtype) {
					case SQLT_BLOB:
					case SQLT_CLOB:
						FUNC4(S->H->env, S->H->svc, S->H->err,
							(OCILobLocator *) S->cols[i].data);
						FUNC1(S->cols[i].data, OCI_DTYPE_LOB);
						break;
					default:
						FUNC5(S->cols[i].data);
				}
			}
		}
		FUNC5(S->cols);
		S->cols = NULL;
	}
	FUNC5(S);

	stmt->driver_data = NULL;

	return 1;
}