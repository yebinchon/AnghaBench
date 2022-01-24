#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_function ;
struct TYPE_3__ {int /*<<< orphan*/ * __debugInfo; int /*<<< orphan*/ * __tostring; int /*<<< orphan*/ * __callstatic; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/ * __isset; int /*<<< orphan*/ * __unset; int /*<<< orphan*/ * __call; int /*<<< orphan*/ * __set; int /*<<< orphan*/ * __get; int /*<<< orphan*/ * destructor; int /*<<< orphan*/ * constructor; int /*<<< orphan*/ * clone; int /*<<< orphan*/ * unserialize_func; int /*<<< orphan*/ * serialize_func; } ;
typedef  TYPE_1__ zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/  ZEND_ACC_USE_GUARDS ; 
 char* ZEND_CALLSTATIC_FUNC_NAME ; 
 char* ZEND_CALL_FUNC_NAME ; 
 char* ZEND_CLONE_FUNC_NAME ; 
 char* ZEND_CONSTRUCTOR_FUNC_NAME ; 
 char* ZEND_DEBUGINFO_FUNC_NAME ; 
 char* ZEND_DESTRUCTOR_FUNC_NAME ; 
 char* ZEND_GET_FUNC_NAME ; 
 char* ZEND_ISSET_FUNC_NAME ; 
 char* ZEND_SET_FUNC_NAME ; 
 char* ZEND_TOSTRING_FUNC_NAME ; 
 char* ZEND_UNSET_FUNC_NAME ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC2(zend_class_entry* ce, zend_string* mname, zend_function* fe) /* {{{ */
{
	if (FUNC1(mname, "serialize")) {
		ce->serialize_func = fe;
	} else if (FUNC1(mname, "unserialize")) {
		ce->unserialize_func = fe;
	} else if (FUNC0(mname)[0] != '_' || FUNC0(mname)[1] != '_') {
		/* pass */
	} else if (FUNC1(mname, ZEND_CLONE_FUNC_NAME)) {
		ce->clone = fe;
	} else if (FUNC1(mname, ZEND_CONSTRUCTOR_FUNC_NAME)) {
		ce->constructor = fe;
	} else if (FUNC1(mname, ZEND_DESTRUCTOR_FUNC_NAME)) {
		ce->destructor = fe;
	} else if (FUNC1(mname, ZEND_GET_FUNC_NAME)) {
		ce->__get = fe;
		ce->ce_flags |= ZEND_ACC_USE_GUARDS;
	} else if (FUNC1(mname, ZEND_SET_FUNC_NAME)) {
		ce->__set = fe;
		ce->ce_flags |= ZEND_ACC_USE_GUARDS;
	} else if (FUNC1(mname, ZEND_CALL_FUNC_NAME)) {
		ce->__call = fe;
	} else if (FUNC1(mname, ZEND_UNSET_FUNC_NAME)) {
		ce->__unset = fe;
		ce->ce_flags |= ZEND_ACC_USE_GUARDS;
	} else if (FUNC1(mname, ZEND_ISSET_FUNC_NAME)) {
		ce->__isset = fe;
		ce->ce_flags |= ZEND_ACC_USE_GUARDS;
	} else if (FUNC1(mname, ZEND_CALLSTATIC_FUNC_NAME)) {
		ce->__callstatic = fe;
	} else if (FUNC1(mname, ZEND_TOSTRING_FUNC_NAME)) {
		ce->__tostring = fe;
	} else if (FUNC1(mname, ZEND_DEBUGINFO_FUNC_NAME)) {
		ce->__debugInfo = fe;
	}
}