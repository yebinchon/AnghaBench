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
struct pdo_column_data {int /*<<< orphan*/  param_type; int /*<<< orphan*/  maxlen; void* name; } ;
struct TYPE_5__ {int column_count; struct pdo_column_data* columns; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {scalar_t__ computed_column_name_count; TYPE_3__* H; } ;
typedef  TYPE_2__ pdo_dblib_stmt ;
struct TYPE_7__ {int /*<<< orphan*/  link; } ;
typedef  TYPE_3__ pdo_dblib_db_handle ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  PDO_PARAM_ZVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,int,char*,scalar_t__) ; 
 int FUNC3 (char*) ; 
 void* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(pdo_stmt_t *stmt, int colno)
{
	pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
	pdo_dblib_db_handle *H = S->H;
	struct pdo_column_data *col;
	char *fname;

	if(colno >= stmt->column_count || colno < 0)  {
		return FAILURE;
	}

	if (colno == 0) {
		S->computed_column_name_count = 0;
	}

	col = &stmt->columns[colno];
	fname = (char*)FUNC1(H->link, colno+1);

	if (fname && *fname) {
		col->name =  FUNC4(fname, FUNC3(fname), 0);
	} else {
		if (S->computed_column_name_count > 0) {
			char buf[16];
			int len;

			len = FUNC2(buf, sizeof(buf), "computed%d", S->computed_column_name_count);
			col->name = FUNC4(buf, len, 0);
		} else {
			col->name = FUNC4("computed", FUNC3("computed"), 0);
		}

		S->computed_column_name_count++;
	}

	col->maxlen = FUNC0(H->link, colno+1);
	col->param_type = PDO_PARAM_ZVAL;

	return 1;
}