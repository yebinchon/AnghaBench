#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_llist_position ;
struct TYPE_13__ {scalar_t__ ptr; } ;
typedef  TYPE_3__ mysqli_object ;
struct TYPE_17__ {TYPE_2__* data; } ;
struct TYPE_16__ {scalar_t__ ptr; } ;
struct TYPE_15__ {int /*<<< orphan*/  error; int /*<<< orphan*/  sqlstate; scalar_t__ error_no; } ;
struct TYPE_14__ {TYPE_8__* stmt; } ;
struct TYPE_12__ {TYPE_1__* error_info; } ;
struct TYPE_11__ {int /*<<< orphan*/  error_list; } ;
typedef  TYPE_4__ MY_STMT ;
typedef  TYPE_5__ MYSQLND_ERROR_LIST_ELEMENT ;
typedef  TYPE_6__ MYSQLI_RESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MYSQLI_STATUS_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zval *FUNC11(mysqli_object *obj, zval *retval)
{
	MY_STMT * stmt;

	FUNC0(MYSQLI_STATUS_INITIALIZED);

 	stmt = (MY_STMT *)((MYSQLI_RESOURCE *)(obj->ptr))->ptr;
	if (stmt && stmt->stmt) {
		FUNC5(retval);
#if defined(MYSQLI_USE_MYSQLND)
		if (stmt->stmt->data && stmt->stmt->data->error_info) {
			MYSQLND_ERROR_LIST_ELEMENT * message;
			zend_llist_position pos;
			for (message = (MYSQLND_ERROR_LIST_ELEMENT *) zend_llist_get_first_ex(&stmt->stmt->data->error_info->error_list, &pos);
				 message;
				 message = (MYSQLND_ERROR_LIST_ELEMENT *) zend_llist_get_next_ex(&stmt->stmt->data->error_info->error_list, &pos))
			{
				zval single_error;
				array_init(&single_error);
				add_assoc_long_ex(&single_error, "errno", sizeof("errno") - 1, message->error_no);
				add_assoc_string_ex(&single_error, "sqlstate", sizeof("sqlstate") - 1, message->sqlstate);
				add_assoc_string_ex(&single_error, "error", sizeof("error") - 1, message->error);
				add_next_index_zval(retval, &single_error);
			}
		}
#else
		if (FUNC6(stmt->stmt)) {
			zval single_error;
			FUNC5(&single_error);
			FUNC2(&single_error, "errno", sizeof("errno") - 1, FUNC6(stmt->stmt));
			FUNC3(&single_error, "sqlstate", sizeof("sqlstate") - 1, FUNC8(stmt->stmt));
			FUNC3(&single_error, "error", sizeof("error") - 1, FUNC7(stmt->stmt));
			FUNC4(retval, &single_error);
		}
#endif
	} else {
		FUNC1(retval);
	}
	return retval;
}