#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_long ;
typedef  int /*<<< orphan*/  zend_bool ;
struct pdo_column_data {int param_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  database_object_handle; struct pdo_column_data* columns; scalar_t__ driver_data; } ;
typedef  TYPE_3__ pdo_stmt_t ;
struct TYPE_9__ {TYPE_2__* H; TYPE_1__* cols; scalar_t__ current_row; int /*<<< orphan*/  result; } ;
typedef  TYPE_4__ pdo_pgsql_stmt ;
struct TYPE_7__ {int /*<<< orphan*/  server; } ;
struct TYPE_6__ {int boolval; int /*<<< orphan*/  pgsql_type; int /*<<< orphan*/  intval; } ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  INV_READ ; 
 int /*<<< orphan*/  OIDOID ; 
#define  PDO_PARAM_BOOL 135 
#define  PDO_PARAM_INPUT_OUTPUT 134 
#define  PDO_PARAM_INT 133 
#define  PDO_PARAM_LOB 132 
#define  PDO_PARAM_NULL 131 
#define  PDO_PARAM_STMT 130 
#define  PDO_PARAM_STR 129 
#define  PDO_PARAM_ZVAL 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC4 (unsigned char*,size_t*) ; 
 int /*<<< orphan*/  TEMP_STREAM_READONLY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (char*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char**,int) ; 

__attribute__((used)) static int FUNC11(pdo_stmt_t *stmt, int colno, char **ptr, size_t *len, int *caller_frees )
{
	pdo_pgsql_stmt *S = (pdo_pgsql_stmt*)stmt->driver_data;
	struct pdo_column_data *cols = stmt->columns;
	size_t tmp_len;

	if (!S->result) {
		return 0;
	}

	/* We have already increased count by 1 in pgsql_stmt_fetch() */
	if (FUNC1(S->result, S->current_row - 1, colno)) { /* Check if we got NULL */
		*ptr = NULL;
		*len = 0;
	} else {
		*ptr = FUNC3(S->result, S->current_row - 1, colno);
		*len = FUNC2(S->result, S->current_row - 1, colno);

		switch (cols[colno].param_type) {

			case PDO_PARAM_INT:
				FUNC5(S->cols[colno].intval, *ptr);
				*ptr = (char *) &(S->cols[colno].intval);
				*len = sizeof(zend_long);
				break;

			case PDO_PARAM_BOOL:
				S->cols[colno].boolval = **ptr == 't';
				*ptr = (char *) &(S->cols[colno].boolval);
				*len = sizeof(zend_bool);
				break;

			case PDO_PARAM_LOB:
				if (S->cols[colno].pgsql_type == OIDOID) {
					/* ooo, a real large object */
					char *end_ptr;
					Oid oid = (Oid)FUNC10(*ptr, &end_ptr, 10);
					int loid = FUNC7(S->H->server, oid, INV_READ);
					if (loid >= 0) {
						*ptr = (char*)FUNC8(&stmt->database_object_handle, loid, oid);
						*len = 0;
						return *ptr ? 1 : 0;
					}
					*ptr = NULL;
					*len = 0;
					return 0;
				} else {
					char *tmp_ptr = (char *)FUNC4((unsigned char *)*ptr, &tmp_len);
					if (!tmp_ptr) {
						/* PQunescapeBytea returned an error */
						*len = 0;
						return 0;
					}
					if (!tmp_len) {
						/* Empty string, return as empty stream */
						*ptr = (char *)FUNC9(TEMP_STREAM_READONLY, "", 0);
						FUNC0(tmp_ptr);
						*len = 0;
					} else {
						*ptr = FUNC6(tmp_ptr, tmp_len);
						FUNC0(tmp_ptr);
						*len = tmp_len;
						*caller_frees = 1;
					}
				}
				break;
			case PDO_PARAM_NULL:
			case PDO_PARAM_STR:
			case PDO_PARAM_STMT:
			case PDO_PARAM_INPUT_OUTPUT:
			case PDO_PARAM_ZVAL:
			default:
				break;
		}
	}

	return 1;
}