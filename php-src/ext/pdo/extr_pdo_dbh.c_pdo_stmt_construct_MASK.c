#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_11__ {void* object; int /*<<< orphan*/  called_scope; scalar_t__ function_handler; } ;
typedef  TYPE_1__ zend_fcall_info_cache ;
struct TYPE_12__ {int size; int no_separation; int /*<<< orphan*/ * params; scalar_t__ param_count; int /*<<< orphan*/ * retval; void* object; int /*<<< orphan*/  function_name; } ;
typedef  TYPE_2__ zend_fcall_info ;
typedef  int /*<<< orphan*/  zend_execute_data ;
struct TYPE_13__ {scalar_t__ constructor; } ;
typedef  TYPE_3__ zend_class_entry ;
struct TYPE_14__ {int /*<<< orphan*/  query_stringlen; int /*<<< orphan*/  query_string; } ;
typedef  TYPE_4__ pdo_stmt_t ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(zend_execute_data *execute_data, pdo_stmt_t *stmt, zval *object, zend_class_entry *dbstmt_ce, zval *ctor_args) /* {{{ */
{
	zval query_string;
	zend_string *key;

	FUNC0(&query_string, stmt->query_string, stmt->query_stringlen);
	key = FUNC8("queryString", sizeof("queryString") - 1, 0);
	FUNC7(FUNC3(object), key, &query_string, NULL);
	FUNC10(&query_string);
	FUNC9(key, 0);

	if (dbstmt_ce->constructor) {
		zend_fcall_info fci;
		zend_fcall_info_cache fcc;
		zval retval;

		fci.size = sizeof(zend_fcall_info);
		FUNC1(&fci.function_name);
		fci.object = FUNC3(object);
		fci.retval = &retval;
		fci.param_count = 0;
		fci.params = NULL;
		fci.no_separation = 1;

		FUNC5(&fci, ctor_args);

		fcc.function_handler = dbstmt_ce->constructor;
		fcc.called_scope = FUNC2(object);
		fcc.object = FUNC3(object);

		if (FUNC4(&fci, &fcc) != FAILURE) {
			FUNC10(&retval);
		}

		FUNC6(&fci, 1);
	}
}