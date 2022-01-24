#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  enum_func_status ;
struct TYPE_5__ {unsigned int param_count; int /*<<< orphan*/  error_info; TYPE_1__* param_bind; } ;
struct TYPE_4__ {int type; int flags; int /*<<< orphan*/  zv; } ;
typedef  TYPE_2__ MYSQLND_STMT_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FAIL ; 
 scalar_t__ IS_DOUBLE ; 
 scalar_t__ IS_NULL ; 
 scalar_t__ IS_STRING ; 
 int MYSQLND_PARAM_BIND_BLOB_USED ; 
#define  MYSQL_TYPE_DOUBLE 132 
#define  MYSQL_TYPE_LONG 131 
#define  MYSQL_TYPE_LONGLONG 130 
#define  MYSQL_TYPE_LONG_BLOB 129 
#define  MYSQL_TYPE_VAR_STRING 128 
 scalar_t__ PASS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum_func_status
FUNC13(MYSQLND_STMT_DATA * stmt, zval ** copies_param, size_t * data_size)
{
	unsigned int i;
	FUNC0("mysqlnd_stmt_execute_calculate_param_values_size");
	for (i = 0; i < stmt->param_count; i++) {
		unsigned short is_longlong = 0;
		unsigned int j;
		zval *bind_var, *the_var = &stmt->param_bind[i].zv;

		bind_var = the_var;
		FUNC3(the_var);
		if ((stmt->param_bind[i].type != MYSQL_TYPE_LONG_BLOB && FUNC9(the_var) == IS_NULL)) {
			continue;
		}

		if (FUNC5(bind_var)) {
			for (j = i + 1; j < stmt->param_count; j++) {
				if (FUNC4(stmt->param_bind[j].zv) && FUNC7(stmt->param_bind[j].zv) == the_var) {
					/* Double binding of the same zval, make a copy */
					if (!*copies_param || FUNC6((*copies_param)[i])) {
						if (PASS != FUNC11(copies_param, the_var, stmt->param_count, i)) {
							FUNC2(stmt->error_info);
							goto end;
						}
					}
					break;
				}
			}
		}

		switch (stmt->param_bind[i].type) {
			case MYSQL_TYPE_DOUBLE:
				*data_size += 8;
				if (FUNC9(the_var) != IS_DOUBLE) {
					if (!*copies_param || FUNC6((*copies_param)[i])) {
						if (PASS != FUNC11(copies_param, the_var, stmt->param_count, i)) {
							FUNC2(stmt->error_info);
							goto end;
						}
					}
				}
				break;
			case MYSQL_TYPE_LONGLONG:
				is_longlong = 4;
				/* fall-through */
			case MYSQL_TYPE_LONG:
				{
					zval *tmp_data = (*copies_param && !FUNC6((*copies_param)[i]))? &(*copies_param)[i]: the_var;
					if (FUNC9(tmp_data) == IS_STRING) {
						goto use_string;
					}
					FUNC10(tmp_data);
				}
				*data_size += 4 + is_longlong;
				break;
			case MYSQL_TYPE_LONG_BLOB:
				if (!(stmt->param_bind[i].flags & MYSQLND_PARAM_BIND_BLOB_USED)) {
					/*
					  User hasn't sent anything, we will send empty string.
					  Empty string has length of 0, encoded in 1 byte. No real
					  data will follows after it.
					*/
					(*data_size)++;
				}
				break;
			case MYSQL_TYPE_VAR_STRING:
use_string:
				*data_size += 8; /* max 8 bytes for size */
				if (FUNC9(the_var) != IS_STRING) {
					if (!*copies_param || FUNC6((*copies_param)[i])) {
						if (PASS != FUNC11(copies_param, the_var, stmt->param_count, i)) {
							FUNC2(stmt->error_info);
							goto end;
						}
					}
					the_var = &((*copies_param)[i]);
				}

				if (!FUNC12(the_var)) {
					goto end;
				}
				*data_size += FUNC8(the_var);
				break;
		}
	}
	FUNC1(PASS);
end:
	FUNC1(FAIL);
}