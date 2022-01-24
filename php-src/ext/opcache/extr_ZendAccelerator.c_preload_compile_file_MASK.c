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
struct TYPE_10__ {scalar_t__ static_variables; int /*<<< orphan*/ * refcount; int /*<<< orphan*/  filename; } ;
struct TYPE_8__ {int /*<<< orphan*/  filename; TYPE_3__ main_op_array; scalar_t__ first_early_binding_opline; } ;
struct TYPE_9__ {TYPE_1__ script; } ;
typedef  TYPE_2__ zend_persistent_script ;
typedef  TYPE_3__ zend_op_array ;
typedef  int /*<<< orphan*/  zend_file_handle ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int IS_ARRAY_IMMUTABLE ; 
 TYPE_2__* FUNC2 () ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  preload_scripts ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_op_array *FUNC7(zend_file_handle *file_handle, int type)
{
	zend_op_array *op_array = FUNC3(file_handle, type);

	if (op_array && op_array->refcount) {
		zend_persistent_script *script;

		script = FUNC2();
		script->script.first_early_binding_opline = (uint32_t)-1;
		script->script.filename = FUNC5(op_array->filename);
		FUNC6(script->script.filename);
		script->script.main_op_array = *op_array;

//???		efree(op_array->refcount);
		op_array->refcount = NULL;

		if (op_array->static_variables &&
		    !(FUNC1(op_array->static_variables) & IS_ARRAY_IMMUTABLE)) {
			FUNC0(op_array->static_variables);
		}

		FUNC4(preload_scripts, script->script.filename, script);
	}

	return op_array;
}