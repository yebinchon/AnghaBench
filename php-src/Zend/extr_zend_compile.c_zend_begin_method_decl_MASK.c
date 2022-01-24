#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_6__ {int fn_flags; int /*<<< orphan*/  function_name; TYPE_2__* scope; } ;
typedef  TYPE_1__ zend_op_array ;
typedef  int /*<<< orphan*/  zend_function ;
struct TYPE_7__ {int ce_flags; int /*<<< orphan*/ * __debugInfo; int /*<<< orphan*/ * __tostring; int /*<<< orphan*/ * __isset; int /*<<< orphan*/ * __unset; int /*<<< orphan*/ * __set; int /*<<< orphan*/ * __get; int /*<<< orphan*/ * __callstatic; int /*<<< orphan*/ * __call; int /*<<< orphan*/ * clone; int /*<<< orphan*/ * destructor; int /*<<< orphan*/ * constructor; int /*<<< orphan*/ * unserialize_func; int /*<<< orphan*/ * serialize_func; int /*<<< orphan*/ * name; int /*<<< orphan*/  function_table; } ;
typedef  TYPE_2__ zend_class_entry ;
typedef  int zend_bool ;
typedef  int uint32_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int ZEND_ACC_ABSTRACT ; 
 int ZEND_ACC_FINAL ; 
 int ZEND_ACC_IMPLICIT_ABSTRACT_CLASS ; 
 int ZEND_ACC_INTERFACE ; 
 int ZEND_ACC_PRIVATE ; 
 int ZEND_ACC_PUBLIC ; 
 int ZEND_ACC_USE_GUARDS ; 
 char* ZEND_CALLSTATIC_FUNC_NAME ; 
 char* ZEND_CALL_FUNC_NAME ; 
 char* ZEND_CLONE_FUNC_NAME ; 
 char* ZEND_CONSTRUCTOR_FUNC_NAME ; 
 char* ZEND_DEBUGINFO_FUNC_NAME ; 
 char* ZEND_DESTRUCTOR_FUNC_NAME ; 
 char* ZEND_GET_FUNC_NAME ; 
 char* ZEND_INVOKE_FUNC_NAME ; 
 char* ZEND_ISSET_FUNC_NAME ; 
 char* ZEND_SET_FUNC_NAME ; 
 char* ZEND_TOSTRING_FUNC_NAME ; 
 char* ZEND_UNSET_FUNC_NAME ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  active_class_entry ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(zend_op_array *op_array, zend_string *name, zend_bool has_body) /* {{{ */
{
	zend_class_entry *ce = FUNC0(active_class_entry);
	zend_bool in_interface = (ce->ce_flags & ZEND_ACC_INTERFACE) != 0;
	uint32_t fn_flags = op_array->fn_flags;

	zend_string *lcname;

	if (in_interface) {
		if (!(fn_flags & ZEND_ACC_PUBLIC) || (fn_flags & (ZEND_ACC_FINAL|ZEND_ACC_ABSTRACT))) {
			FUNC3(E_COMPILE_ERROR, "Access type for interface method "
				"%s::%s() must be omitted", FUNC1(ce->name), FUNC1(name));
		}
		op_array->fn_flags |= ZEND_ACC_ABSTRACT;
	}

	if (op_array->fn_flags & ZEND_ACC_ABSTRACT) {
		if (op_array->fn_flags & ZEND_ACC_PRIVATE) {
			FUNC3(E_COMPILE_ERROR, "%s function %s::%s() cannot be declared private",
				in_interface ? "Interface" : "Abstract", FUNC1(ce->name), FUNC1(name));
		}

		if (has_body) {
			FUNC3(E_COMPILE_ERROR, "%s function %s::%s() cannot contain body",
				in_interface ? "Interface" : "Abstract", FUNC1(ce->name), FUNC1(name));
		}

		ce->ce_flags |= ZEND_ACC_IMPLICIT_ABSTRACT_CLASS;
	} else if (!has_body) {
		FUNC3(E_COMPILE_ERROR, "Non-abstract method %s::%s() must contain body",
			FUNC1(ce->name), FUNC1(name));
	}

	op_array->scope = ce;
	op_array->function_name = FUNC6(name);

	lcname = FUNC9(name);
	lcname = FUNC5(lcname);

	if (FUNC4(&ce->function_table, lcname, op_array) == NULL) {
		FUNC3(E_COMPILE_ERROR, "Cannot redeclare %s::%s()",
			FUNC1(ce->name), FUNC1(name));
	}

	if (FUNC7(lcname, "serialize")) {
		ce->serialize_func = (zend_function *) op_array;
	} else if (FUNC7(lcname, "unserialize")) {
		ce->unserialize_func = (zend_function *) op_array;
	} else if (FUNC1(lcname)[0] != '_' || FUNC1(lcname)[1] != '_') {
		/* pass */
	} else if (FUNC7(lcname, ZEND_CONSTRUCTOR_FUNC_NAME)) {
		ce->constructor = (zend_function *) op_array;
	} else if (FUNC7(lcname, ZEND_DESTRUCTOR_FUNC_NAME)) {
		ce->destructor = (zend_function *) op_array;
	} else if (FUNC7(lcname, ZEND_CLONE_FUNC_NAME)) {
		ce->clone = (zend_function *) op_array;
	} else if (FUNC7(lcname, ZEND_CALL_FUNC_NAME)) {
		FUNC2(fn_flags, "__call", 0);
		ce->__call = (zend_function *) op_array;
	} else if (FUNC7(lcname, ZEND_CALLSTATIC_FUNC_NAME)) {
		FUNC2(fn_flags, "__callStatic", 1);
		ce->__callstatic = (zend_function *) op_array;
	} else if (FUNC7(lcname, ZEND_GET_FUNC_NAME)) {
		FUNC2(fn_flags, "__get", 0);
		ce->__get = (zend_function *) op_array;
		ce->ce_flags |= ZEND_ACC_USE_GUARDS;
	} else if (FUNC7(lcname, ZEND_SET_FUNC_NAME)) {
		FUNC2(fn_flags, "__set", 0);
		ce->__set = (zend_function *) op_array;
		ce->ce_flags |= ZEND_ACC_USE_GUARDS;
	} else if (FUNC7(lcname, ZEND_UNSET_FUNC_NAME)) {
		FUNC2(fn_flags, "__unset", 0);
		ce->__unset = (zend_function *) op_array;
		ce->ce_flags |= ZEND_ACC_USE_GUARDS;
	} else if (FUNC7(lcname, ZEND_ISSET_FUNC_NAME)) {
		FUNC2(fn_flags, "__isset", 0);
		ce->__isset = (zend_function *) op_array;
		ce->ce_flags |= ZEND_ACC_USE_GUARDS;
	} else if (FUNC7(lcname, ZEND_TOSTRING_FUNC_NAME)) {
		FUNC2(fn_flags, "__toString", 0);
		ce->__tostring = (zend_function *) op_array;
	} else if (FUNC7(lcname, ZEND_INVOKE_FUNC_NAME)) {
		FUNC2(fn_flags, "__invoke", 0);
	} else if (FUNC7(lcname, ZEND_DEBUGINFO_FUNC_NAME)) {
		FUNC2(fn_flags, "__debugInfo", 0);
		ce->__debugInfo = (zend_function *) op_array;
	}

	FUNC8(lcname, 0);
}